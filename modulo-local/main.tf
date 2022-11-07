terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "bucket-outputs-terraform-roberto-duarte"
    key    = "aws-vm-modulo-local/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "desenvolvimento"
}

module "s3" {
  source = "./bucket"

  owner      = "Roberto S3"
  managed-by = "Terrafomor with module"
}