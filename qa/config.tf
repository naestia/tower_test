# terraform {
#   backend "s3" {
#     region = "eu-north-1"
#     bucket = "tower-qa-tf-backend"
#     key    = "core/terraform.tfstate"
#   }

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.45"
#     }
#   }
# }

# data "aws_s3_bucket" "selected" {
#   bucket = "tower-qa-tf-backend"
# }

# resource "aws_kms_key" "mykey" {
#     description = "Key"
#     deletion_window_in_days = 10
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
#     bucket = aws_s3_bucket.selected.id

#     rule {
#         apply_server_side_encryption_by_default {
#           kms_master_key_id = aws_kms_key.mykey.arn
#           sse_algorithm = "aws:kms"
#         }
#     }
# }

provider "aws" {
  region = "eu-north-1"
}
