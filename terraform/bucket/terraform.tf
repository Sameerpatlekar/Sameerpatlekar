provider "aws" {
  region = "us-west-1" # or your preferred region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tfstate-bucket"

  tags = {
    Name = "my-tfstate-bucket"
  }
}
