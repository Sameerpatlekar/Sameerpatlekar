provider "aws" {
  region = "us-east-1"
}
/*
module "vpc" {
    source = "./module"
    this_vpc_cidr_block = "192.168.0.0/16"
    this_vpc_tags = "my_vpc"
    this_subnet_pub_cidr_block = "192.168.0.0/17"
    this_subnet_private1_cidr_block =  "192.168.128.0/19"
    this_subnet_pub_map_ip = true
    this_subnet_private_map_ip = false
    this_subnet_pub_tags  = "pub_subnet"
    this_subnet_private1_tags = "pri_subnet1"
    this_subnet_private2_cidr_block = "192.168.192.0/20"
    this_subnet_private2_tags = "pri_subnet2"
    this_igw_tags = "igw"
    this_def_Route_example_cidr_block = "0.0.0.0/0"
    this_def_Route_example_tag = "my-igw" 
} 
*/

module "ec2" {
    source = "./module/ec2"
    this_aws_instance_ami = "ami-04b70fa74e45c3917"
    this_aws_instance_instance_type  = "t2.micro"
    //this_aws_instance_subnet = module.aws_vpc.aws_subnet_this_public
    this_aws_instance_key_name = "ec2-key"
    this_aws_instance_availability_zone = "us-east-1"
    this_aws_instance_volume_size = 8
    this_aws_instance_count = 2
    this_aws_instance_user_data_base64 = true
    this_aws_instance_tags =  "Terraform_instance"    
}

