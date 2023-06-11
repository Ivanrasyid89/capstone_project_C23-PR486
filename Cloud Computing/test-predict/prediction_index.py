import requests
import json

# URL endpoint dari Cloud Run
url = 'https://home4paws02-tjop4lptbq-et.a.run.app/v1/models/home4paws:predict'

# Data input untuk diprediksi
input_data = { 
    "instances": [ 
        { 
            "latitude": -45.3849, 
            "longitude": 143.384, 
            "jenis_hewan": "Kucing" 
        } 
    ] 
}

# Mengirim permintaan HTTP dengan data input
response = requests.post(url, json=input_data)

# Menguraikan respons
if response.status_code == 200:
    prediction = response.json()
    print('Hasil prediksi:', prediction)
else:
    print('Permintaan gagal dengan kode status:', response.status_code)




