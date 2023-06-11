import requests
import json

data = {
    "latitude": -45.3849,
    "longitude": 143.384,
    "jenis_hewan": "Kucing"
}

resp = requests.post("https://home4paws02-tjop4lptbq-et.a.run.app/v1/models/home4paws:predict", json={'instances': [data]})

print(resp.json())
