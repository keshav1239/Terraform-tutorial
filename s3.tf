provider "aws" {
  region = "us-west-2"   # Replace with your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"   # Replace with your desired bucket name
  acl    = "private"
}
