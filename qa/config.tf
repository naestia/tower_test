terraform {
  backend "s3" {
    region = "eu-north-1"
    bucket = "tower-test-tf-backend"
    key    = "core/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45"
    }
  }
}

provider "aws" {
  region  = "eu-north-1"
}
