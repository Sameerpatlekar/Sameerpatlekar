provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e879a1b306fffb22"  # Replace with the desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "first-terrafom-instance"
  }

  # Optional: Define a key pair for SSH access
  key_name = "ec2-key"  # Replace with your key pair name
}
