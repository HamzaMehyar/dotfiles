import http.client
import json
import os
import urllib.request
import argparse
from typing import List, Tuple

def download_images(data: str, save_directory: str, category: str) -> None:
    os.makedirs(save_directory, exist_ok=True)
    images = json.loads(data)
    for image in images:
        image_id = image['id']
        image_url = image['urls']['full']
        save_path = os.path.join(save_directory, f"{category}:{image_id}.jpg")
        try:
            urllib.request.urlretrieve(image_url, save_path)
            print(f"Downloaded: {image_id}")
        except Exception as e:
            print(f"Error downloading {image_id}: {str(e)}")

def fetch_images(query: str, count: int, auth_key: str) -> str:
    conn = http.client.HTTPSConnection("api.unsplash.com")
    headers = {
        'Authorization': f'Client-ID {auth_key}'
    }
    conn.request("GET", f"/photos/random/?query={query}&count={count}&orientation=landscape", '', headers)
    res = conn.getresponse()
    return res.read()

def main(queries: List[Tuple[str, int]], save_directory: str, auth_key: str) -> None:
    for query, count in queries:
        print(f"Fetching {count} images for query: {query}")
        data = fetch_images(query, count, auth_key)
        download_images(data, save_directory, query)
    print("All downloads completed.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Download images from Unsplash based on queries.")
    parser.add_argument("queries", nargs="+", help="List of queries and counts in the format 'query:count'")
    parser.add_argument("-p", "--path", default="~/wall", help="Directory to save the images")
    parser.add_argument("-k", "--key", required=True, help="Unsplash API Client-ID")
    
    args = parser.parse_args()
    
    # Parse queries and counts
    query_counts = [q.split(":") for q in args.queries]
    queries = [(q[0], int(q[1])) for q in query_counts]
    
    main(queries, os.path.expanduser(args.path), args.key)

#python wallpapers.py "Nature:10" "Cities:5" "Animals:8" -p "/path/to/save" -k "api"
