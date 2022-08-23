terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

## create vpc

resource "aws_vpc" "main" {
  cidr_block       = "10.232.70.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "mysuite-treasurary"
    Dept = "Finance"
    env  = "stage"
  }
}

