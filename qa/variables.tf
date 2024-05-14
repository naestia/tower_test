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

variable "team" {
  description = "Team that owns this work."
  type        = string
}

variable "aws_role_arn" {
  description = "AWS Deploy Role."
  type        = string
}
