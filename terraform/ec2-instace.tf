provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04b70fa74e45c3917"  # Replace with the desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "my-terraform-Instance"
  }

  # Optional: Define a key pair for SSH access
  key_name = "ec2-key"  # Replace with your key pair name
}
