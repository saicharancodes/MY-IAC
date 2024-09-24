provider "aws" {
    alias = "eu-north-1"
    region = "eu-north-1"  # Set your desired AWS region
    skip_region_validation = true
}

provider "aws" {
    alias  = "eu-west-1"
    region = "eu-west-1" # Set your desired AWS region
    skip_region_validation = true
}

resource "aws_instance" "example1" {
    provider = aws.eu-north-1
    ami           = "ami-0129bfde49ddb0ed6"  # Specify an appropriate hello world
    instance_type = "t3.micro"
    key_name = "ec2keypair"
    subnet_id = "subnet-018471085bd9e4be7"
}

resource "aws_instance" "ex2" {
    provider = aws.eu-west-1
    ami           = "ami-03cc8375791cb8bcf"  # Specify an appropriate hello world
    instance_type = "t3.micro"
    key_name = "keypair"
    subnet_id = "subnet-09d830bb42e8ac046"
}