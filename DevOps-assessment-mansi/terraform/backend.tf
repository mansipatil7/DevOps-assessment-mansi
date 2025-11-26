terraform {
  backend "s3" {
    bucket         = "mansi-terrafrorm-state-bucket"
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-db"
  }
}