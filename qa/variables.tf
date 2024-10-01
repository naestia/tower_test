variable "aws_account" {
  type        = string
  description = "The AWS account to use when deploying"
}

variable "region" {
  type        = string
  description = "The AWS region to which this env will be deployed"
}

variable "env_name" {
  type        = string
  description = "Environment name for account"
}

variable "role_arn" {
  description = "AWS Deploy Role."
  type        = string
}

variable "web_identity_token" {
  type = string
}

variable "web_identity_token_directory" {
  type = string
  description = "Directory to look for the web identity token file"
}
