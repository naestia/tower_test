resource "aws_s3_bucket" "bucket" {
  bucket = "tower-qa-tf-backend"

  tags = {
    "Name" = "Terraform State Backend"
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = enabled
  }
}

resource "aws_kms_key" "mykey" {
    description = "Key"
    deletion_window_in_days = 10
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
    bucket = aws_s3_bucket.bucket.id

    rule {
        apply_server_side_encryption_by_default {
          kms_master_key_id = aws_kms_key.mykey.arn
          sse_algorithm = "aws:kms"
        }
    }
}