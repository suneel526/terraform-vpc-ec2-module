terraform {
  required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "5.42.0"
    }

    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}