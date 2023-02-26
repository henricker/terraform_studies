terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = ">= 3.73.0"
    }
  }

  backend "s3" {
    bucket = "henricker-remote-state"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"

    default_tags {
      tags = {
        owner = "henricker"
        managed_by = "terraform"
      }
    }
}

data "terraform_remote_state" "vpc" {
    backend = "s3"
    config = {
      bucket = "henricker-remote-state"
      key    = "aws-vpc/terraform.tfstate"
      region = "us-east-1"
     }
}