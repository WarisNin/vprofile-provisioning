terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.4"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }

  backend "s3" {
    bucket = "vprofile-state1"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  required_version = "~> 1.9.1"
}