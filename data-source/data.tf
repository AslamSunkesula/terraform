data "aws_ami" "ami_id" {
    most_recent = true
    owners = ["334577349345"] #you can give AWS Account ID

    filter {
        name   = "name"
        values = ["zx_ubuntu22"]
    }
}


#instace_info output 

output "ami_id" {
  value = data.aws_ami.ami_id.id
}


data "aws_vpc" "default" {
  default = true
} 


#output 


output "aws_vpc"{
  value = data.aws_vpc.default
}


resource "aws_security_group" "allow-http" {

  name = "sec-grp"

  vpc_id = data.aws_vpc.default.id   #Here we are giving vpc id to create the aws_security_group

  ingress {
   description = "Allowing all inbound traffic"
    from_port=80
    to_port=80
    protocol="tcp"  
    cidr_blocks=["0.0.0.0/0"]
  }

  egress{
    from_port=80
    to_port=80
    protocol="-1"
    cidr_blocks=["0.0.0.0/0"]
  }

}