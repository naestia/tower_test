# This code sample uses the 'requests' library:
# http://docs.python-requests.org
import requests
import json
import os
import datetime
from pathlib import Path

token = os.environ["BITBUCKET_TOKEN"]
workspace = os.environ["BITBUCKET_WORKSPACE"]
repo_slug = os.environ["BITBUCKET_REPO_SLUG"]
pull_request_id = os.environ["BITBUCKET_PR_ID"]

with Path("./qa/tfplan.txt").open("r") as file:

    comment = file.read()

print(comment)
created_on = datetime.datetime.now()

url = f"https://api.bitbucket.org/2.0/repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments"

headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    "Authorization": f"Bearer {token}"
}

payload = json.dumps({
    "content": {
        "raw": comment
    }
})

response = requests.request(
   "POST",
   url,
   data=payload,
   headers=headers
)

print(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")))
