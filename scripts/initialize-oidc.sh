#!/bin/bash

mkdir ../web-identity && mkdir ../artifacts
export AWS_WEB_IDENTITY_TOKEN_FILE=../web-identity/web-identity-token
echo $BITBUCKET_STEP_OIDC_TOKEN > ../web-identity/web-identity-token