terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.21.0"
    }
  }

  required_version = "~> 1.6.0"
}

provider "aws" {
  profile = "default"
  region  = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = "true"
      ProjectName = var.project_name
    }
  }
}
