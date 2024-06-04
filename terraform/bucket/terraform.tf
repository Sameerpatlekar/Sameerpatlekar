provider "aws" {
  region = "us-east-1" # or your preferred region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-tfstate-bucket-23554433"

  tags = {
    Name = "my-tfstate-bucket-23554433"
  }
}
