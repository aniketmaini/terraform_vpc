provider "aws" {
	access_key = ""
	secret_key = ""
	region = "${var.region}"
}
resource "aws_vpc" "main" {
	cidr_block = "${var.vpc_cidr}"
	instance_tenancy = "default"

	tags {
		Name = "VPC1"
		Location = "Chandigarh"
	}
}

resource "aws_subnet" "subnet1"{
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.subnet1}" 

	tags {
		Name = "Subnet1"
	}
}
