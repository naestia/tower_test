#!/bin/bash

bucket="tower-test-tf-backend"
key="state-artifacts"
tmp=$(aws s3api head-object --bucket ${bucket} --key ${key}/${line}-tf.tfstate)

if [[ ! -z "${tmp}" ]]; then
    aws s3 cp s3://$bucket/$key/$line-tf.tfstate ./$line-tf.tfstate
    exit 0
fi