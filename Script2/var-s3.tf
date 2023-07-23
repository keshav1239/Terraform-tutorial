# main.tf

# Declare a variable for the AWS region
variable "aws_region" {
  type    = string
  default = "us-west-2"   # Replace with your desired default region
}

# Provider configuration for AWS
provider "aws" {
  region = var.aws_region
}

# Resource block for creating an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
  region = var.aws_region   # Using the aws_region variable here
}

# Output the ARN of the created S3 bucket
output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}
