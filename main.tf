terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

# List the provider for resources
provider "aws" {
  region = "us-east-1"
}

