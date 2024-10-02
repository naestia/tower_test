resource "aws_s3_bucket" "bucket" {
  bucket = "tower-qa-tf-backend"

  tags = {
    "Name" = "Terraform State Backend"
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
