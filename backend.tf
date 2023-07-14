terraform {
  backend "s3" {
    bucket         = "my-project-2323"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-project-2023"
  }
}
