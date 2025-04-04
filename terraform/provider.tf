terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "lab13-acit4640-bucket"
    key     = "terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-2"
}
