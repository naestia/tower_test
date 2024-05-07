# This code sample uses the 'requests' library:
# http://docs.python-requests.org
import requests
import json
import os

token = os.environ["BITBUCKET_TOKEN"]
workspace = os.environ["BITBUCKET_WORKSPACE"]
repo_slug = os.environ["BITBUCKET_REPO_SLUG"]

url = f"https://api.bitbucket.org/2.0/repositories/{workspace}/{repo_slug}/commits/?include=main"

headers = {
  "Accept": "application/json",
  "Authorization": f"Bearer {token}"
}

response = requests.request(
   "GET",
   url,
   headers=headers
)

data = json.loads(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")))

print(data['values'][1]['hash'])