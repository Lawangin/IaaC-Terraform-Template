// infra/variable.tf
variable "aws_region" {
  default = "us-east-1"
}

variable "project_id" {
  default = "node-app"
}

variable "env" {
  default = "prod"
}

// infra/main.tf
provider "aws" {
  version = "~> 2.0"
  region  = var.aws_region
}

locals {
  # Target port to expose
  target_port = 3000
}