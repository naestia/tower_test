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
  profile = "ductus"
  # assume_role_with_web_identity {
  #   role_arn = var.prod_role_arn
  #   session_name = "Name"
  #   web_identity_token_file = "./${var.web_identity_token_directory}/web-identity-token"
  # }
}
