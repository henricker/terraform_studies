terraform {
  required_version = ">= 1.0.0, < 1.2.0"
  #required_version = "~> 1.1.0" 1.1.0 até 1.1.n

  required_providers {
    // we can use any providers
    aws = {
        version = ">= 3.50.0"
        source = "hashicorp/aws" // https://registry.terraform.io/providers/hashicorp/aws/latest
    }

    azure = {
        version = ">= 2.70.0"
        source = "hashicorp/azurerm" // https://registry.terraform.io/providers/hashicorp/azurerm/latest
    }
  }

  // We use backend to store the state of our infrastructure 
  backend "s3" {
    
  }
}

provider "aws" {

}

resource "aws_instance" "vm1" {
  
}

data "aws_ami" "ami" {
  
}

module "vpc" {
  
}

variable "ip" {
  
}

output "vm1_ip" {
  
}

locals {
  
}