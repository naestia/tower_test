terraform {
  backend "s3" {
    region = "eu-north-1"
    bucket = "tower-prod-tf-backend"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45"
    }
  }
}
