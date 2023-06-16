from flask import Flask, request, jsonify
from tensorflow import keras
from tensorflow.keras.preprocessing import image
import numpy as np
import os
import io
import requests
from PIL import Image

app = Flask(__name__)

PPREDIC_MODEL_ENDPOINT = 'https://home4paws02-tjop4lptbq-et.a.run.app/v1/models/home4paws:predict'
SHELTER_DATASET_ENDPOINT = "https://storage.googleapis.com/dataset_c23-pr468/nama_shelter_lengkap.json"

CAT_MODEL_ENDPOINT = keras.models.load_model("cat_breed_model_v2.h5")
# cat_response = requests.get("https://storage.googleapis.com/dataset_c23-pr468/cat_breed_model_v2.h5")
# cat_model_bytes = io.BytesIO(cat_response.content)
# CAT_MODEL_ENDPOINT = keras.models.load_model(cat_model_bytes)
# CAT_MODEL_ENDPOINT = "https://catbreed-tjop4lptbq-et.a.run.app"
CAT_DATASET_ENDPOINT = "https://storage.googleapis.com/dataset_c23-pr468/cat_breed_label_map.json"

DOG_MODEL_ENDPOINT = keras.models.load_model("dog_breed_model_v2.h5")
# dog_response = requests.get("https://storage.googleapis.com/dataset_c23-pr468/dog_breed_model_v2.h5")
# dog_model_bytes = io.BytesIO(dog_response.content)
# DOG_MODEL_ENDPOINT = keras.models.load_model(dog_model_bytes)
# DOG_MODEL_ENDPOINT = "https://dogbreed-tjop4lptbq-et.a.run.app"
DOG_DATASET_ENDPOINT = "https://storage.googleapis.com/dataset_c23-pr468/dog_breed_label_map.json"

def load_image(image_bytes):
    img = Image.open(io.BytesIO(image_bytes)).convert('RGB')
    img = img.resize((299, 299))
    img_tensor = image.img_to_array(img)
    img_tensor = np.expand_dims(img_tensor, axis=0)
    img_tensor = img_tensor / 255.0

    return img_tensor

def load_breed_mapping(json_url):
    response = requests.get(json_url)
    breed_mapping = response.json()
    return breed_mapping

def predict(x, model):
    predictions = model.predict(x)
    pred0 = predictions[0]
    label0 = np.argmax(pred0)
    return label0

@app.route('/predict', methods=['POST'])
def predict_shelter():
    data = request.get_json()

    instances = data.get('instances', [])
    if not instances:
        return jsonify({'error': 'No instances provided'}), 400

    shelter = instances[0]
    jenis_hewan = shelter.get('jenis_hewan')
    latitude = shelter.get('latitude')
    longitude = shelter.get('longitude')


    payload = {
        'instances': [
            {
                'latitude': latitude,
                'longitude': longitude,
                'jenis_hewan': jenis_hewan
            }
        ]
    }
    response = requests.post(PPREDIC_MODEL_ENDPOINT, json=payload)
    response_tojson = response.json()

    highest_index = np.argmax(response_tojson['predictions'][0])

    dataset_response = requests.get(SHELTER_DATASET_ENDPOINT)
    output_to_user = dataset_response.json()

    if response.status_code == 200:
        return jsonify(output_to_user[highest_index]), 200
    else:
        error_message = f"Model request failed with status code: {response.status_code}"
    return jsonify({'error': error_message}), 500   

@app.route("/catbreed", methods=["POST"])
def index_cat():
    json_mapping = load_breed_mapping(CAT_DATASET_ENDPOINT)
    file = request.files.get('file')
    if file is None or file.filename == "":
        return jsonify({"error": "no file"})
    try:
        image_bytes = file.read()
        tensor = load_image(image_bytes)
        prediction = predict(tensor, CAT_MODEL_ENDPOINT)
        breed_name = json_mapping.get(str(prediction), "Unknown")
        data = {"prediction": breed_name}
        return jsonify(data)
    except Exception as e:
        return jsonify({"error": str(e)})
    

@app.route("/dogbreed", methods=["POST"])
def index_dog():
    json_mapping = load_breed_mapping(DOG_DATASET_ENDPOINT)
    file = request.files.get('file')
    if file is None or file.filename == "":
        return jsonify({"error": "no file"})
    try:
        image_bytes = file.read()
        tensor = load_image(image_bytes)
        prediction = predict(tensor, DOG_MODEL_ENDPOINT)
        breed_name = json_mapping.get(str(prediction), "Unknown")
        data = {"prediction": breed_name}
        return jsonify(data)
    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))
