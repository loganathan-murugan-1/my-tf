terraform {
  backend "s3" {
    bucket         = "my-project-23"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-project-2023"
  }
}
