import http.client
import json
import os
import urllib.request

def download_images(data, save_directory):
    os.makedirs(save_directory, exist_ok=True)

    images = json.loads(data)

    for image in images:
        image_id = image['id']
        image_url = image['urls']['full']
        save_path = os.path.join(save_directory, f"{image_id}.jpg")

        try:
            urllib.request.urlretrieve(image_url, save_path)
            print(f"Downloaded: {image_id}")
        except Exception as e:
            print(f"Error downloading {image_id}: {str(e)}")

conn = http.client.HTTPSConnection("api.unsplash.com")
payload = ''
headers = {
    'Authorization': 'Client-ID test'
}
conn.request("GET", "/photos/random/?query=Nature&count=30&orientation=landscape", payload, headers)
res = conn.getresponse()
data = res.read()

save_directory = "/home/hamza/wall"

download_images(data, save_directory)

print("done")
