terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-west-1"
}
resource "aws_instance" "example" {
  ami               = "ami-03130878b60947df3"
  instance_type     = "t2.micro"
  availability_zone = var.az
}
variable "az" {
  type = string
}