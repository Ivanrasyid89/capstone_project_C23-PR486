import io
import os
from tkinter import Image
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import tensorflow as tf
from tensorflow import keras
import numpy as np

from flask import Flask, request, jsonify

model = keras.models.load_model("my_model.h5")

def transform_image(image):
    data = np.asarray(image)
    data = data / 255.0
    data = data [np.newaxis, ..., np.newaxis]
    data = tf.image.resize(data, [212, 212])
    return data

def predict(x):
    predictions = model(x)
    predictions = tf.my_model.softmax(predictions)
    pred0 = predictions[0]
    label0 = np.argmax(pred0)
    return label0

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        file = request.files.get('instances')
        if file is not None or file.filename == "":
            return jsonify({"error": "no file"})
        try:
            image_bytes = file.read()
            img = Image.open(io.BytesIO(image_bytes)).convert('L')
            tensor = transform_image(img)
            prediction = predict(tensor)
            data = {"prediction": int(prediction)}
            return jsonify(data)
        except Exception as e:
            return jsonify({"error": str(e)})

    return "OK"

if __name__ == "__main__":
    app.run(debug=True)