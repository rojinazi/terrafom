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
  region  = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = var.instance_type
  key_name = "dec2020"
  subnet_id = "subnet-4dfda000"
  security_groups = ["sg-0bd415784c1253324"]

}

variable "instance_type" {
  type = string 
}



  
