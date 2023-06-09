terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-triku"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform-private"
  }
}

provider "aws" {
  profile = "terraform-private"
  region  = "ap-northeast-1"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "domain" {
  type = string
}
