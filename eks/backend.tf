terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "devops-recipe-app-shobhi"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "devops-recipe-app-api-tf-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
