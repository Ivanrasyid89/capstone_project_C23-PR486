from flask import Flask, request, jsonify
import numpy as np
import os
import requests

app = Flask(__name__)

MODEL_ENDPOINT = 'https://home4paws02-tjop4lptbq-et.a.run.app/v1/models/home4paws:predict'
DATASET_ENDPOINT = "https://storage.googleapis.com/dataset_c23-pr468/nama_shelter_lengkap.json"

# def load_image(img_path):
#     img = image.load_img(img_path, target_size=(299, 299))
#     img_tensor = image.img_to_array(img)
#     img_tensor = np.expand_dims(img_tensor, axis=0)
#     img_tensor = img_tensor / 255.0

#     return img_tensor

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
    response = requests.post(MODEL_ENDPOINT, json=payload)
    response_tojson = response.json()

    highest_index = np.argmax(response_tojson['predictions'][0])

    dataset_response = requests.get(DATASET_ENDPOINT)
    output_to_user = dataset_response.json()

    if response.status_code == 200:
        return jsonify(output_to_user[highest_index]), 200
    else:
        error_message = f"Model request failed with status code: {response.status_code}"
    return jsonify({'error': error_message}), 500   

# @app.route('/predictdogbreed', methods=['POST'])
# def prediction_dog_breed():

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))
