terraform {
  backend "s3" {
    bucket = "worklyfe-dev-terraform"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}


