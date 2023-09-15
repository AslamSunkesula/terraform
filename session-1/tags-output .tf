resource "aws_instance" "demo" {

ami = var.ami_id
instance_type = var.instance_type
security_groups = [aws_security_group.allow_all.name]


tags = var.tags
}


#output 

output "public_ip"{
    value =aws_instance.demo.public_ip
}