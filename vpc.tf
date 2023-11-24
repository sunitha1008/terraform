# Creating a VPC for ecomm application using terraform
resource "aws_vpc" "tf-ecomm" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ecomm-vpc"
  }
}
# creating public subnets for ecomm-vpc in different availibility zones
resource "aws_subnet" "ecomm-pub-sn-A" {
  vpc_id     = aws_vpc.tf-ecomm.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2a"
  tags = {
    Name = "ecomm-pubsn-A"
  }
}

resource "aws_subnet" "ecomm-pub-sn-B" {
  vpc_id     = aws_vpc.tf-ecomm.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-2a"
  tags = {
    Name = "ecomm-pubsn-B"
  }
}

