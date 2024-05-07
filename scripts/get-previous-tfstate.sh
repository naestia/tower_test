#!/bin/bash

arg=$1
input="commits.txt"
bucket="tower-test-tf-backend"
key="state-artifacts"

while IFS= read -r line
do
  tmp=$(aws s3api head-object --bucket ${bucket} --key ${key}/${line}-tf.tfstate)
  if [[ ! -z "${tmp}" ]]; then
    aws s3 cp s3://$bucket/$key/$line-tf.tfstate ./$line-tf.tfstate
    exit 0
  fi



  # aws s3 cp s3://tower-test-tf-backend/state-artifacts/$line-tf.tfstate ./$line-test.tfstate;
done < "$input"

echo $arg
