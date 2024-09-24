provider "aws" {
    region = "eu-north-1"  # Set your desired AWS region
    skip_region_validation = true
}

resource "aws_instance" "example" {
    ami           = "ami-0129bfde49ddb0ed6"  # Specify an appropriate hello world
    instance_type = "t3.micro"
    key_name = "ec2keypair"
    subnet_id = "subnet-018471085bd9e4be7"
}