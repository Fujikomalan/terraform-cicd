# vim main.tf

variable "project_name" {
  default = "zomato"
}

variable "project_env" {
    
  default = "prod"
} 


provider "aws" {
  region = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


terraform {
  backend "s3" {
    bucket     = "terraform101.devops.com"
    key        = "terraform.tfstate"
    region     = "ap-south-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
  }
}

