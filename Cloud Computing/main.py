from flask import Flask, request, jsonify
import pandas as pd
import numpy as np
import tensorflow as tf
from tensorflow.keras import backend as K
from sklearn.preprocessing import LabelEncoder

app = Flask(__name__)

# Load the trained model
model = tf.keras.models.load_model('model/saved_model/my_model.h5')

# Load the LabelEncoder
le_user = LabelEncoder()
le_user.classes_ = np.load('model/recommendation_system_capstone_project_final.py')

# Define the feature columns and layer
feature_columns = []
numeric_columns = ['latitude', 'longitude']
for col in numeric_columns:
    numeric_feature_column = tf.feature_column.numeric_column(col)
    feature_columns.append(numeric_feature_column)
jenis_hewan = tf.feature_column.categorical_column_with_vocabulary_list('jenis_hewan', ['Kucing', 'Anjing', 'Lainnya'])
jenis_hewan_one_hot = tf.feature_column.indicator_column(jenis_hewan)
feature_columns.append(jenis_hewan_one_hot)
feature_layer = tf.keras.layers.DenseFeatures(feature_columns)

@app.route('/', methods=['GET'])
def home():
    return 'Welcome to the Recommendation System API!'

@app.route('/predict', methods=['POST'])
def predict():
    data = request.json
    latitude_input = float(data['latitude'])
    longitude_input = float(data['longitude'])
    jenis_hewan_input = data['jenis_hewan']

    df_for_test_predict = pd.DataFrame(data={'latitude': [latitude_input],
                                             'longitude': [longitude_input],
                                             'jenis_hewan': [jenis_hewan_input]})

    predict_ds = tf.data.Dataset.from_tensor_slices(dict(df_for_test_predict)).batch(1)
    model_prediction = model.predict(predict_ds)
    prediction_result = model_prediction[0]
    highest_prediction_index = np.argmax(prediction_result)
    output_to_user = le_user.inverse_transform([highest_prediction_index])[0]

    return jsonify({'prediction': output_to_user})

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))

np.save('model/recommendation_system_capstone_project_final.py', le_user.classes_)