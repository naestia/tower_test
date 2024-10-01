terraform {
  backend "s3" {
    region = "eu-north-1"
    bucket = "tower-qa-tf-backend"
    key    = "core/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45"
    }
  }
}
