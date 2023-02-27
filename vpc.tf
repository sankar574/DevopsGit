resource "aws_vpc" "default" {
    cidr_block = "172.19.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "DevopsGIT"
	Owner = "Sankar Degala"
	environment = "Development"
    }
}

resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "DevopsGIT-IGW webhook"
    }
}

terraform {
  backend "s3" {
    bucket = "stehankarterraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}
