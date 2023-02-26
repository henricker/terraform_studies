terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "henricker"
      managed-by = "terraform"
    }
  }
}

// terraform init => initialize terraform and make download the provider
// terraform validate => validate the syntax of the code
// terraform plan => show the changes that will be applied
// terraform apply => apply the changes
// terraform destroy => destroy the resources