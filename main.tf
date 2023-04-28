terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.49.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "random-pet" {
  source  = "app.terraform.io/hashicorp-jennawong/random-pet/aws"
  version = "1.0.0"
}