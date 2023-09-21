resource "aws_instance" "loop" {
    count = 10
    ami = var.ami_id
    #instance_type = "t2.micro"
    instance_type = var.instance_names[count.index] == "mongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.micro" : "t2.micro" 

#implementing the tags here 

    tags = {
        Name = var.instance_names[count.index]
    }

}

 resource "aws_route53_record" "record" {
    count = 10
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.loop[count.index].private_ip]
}


#fetching the public_ip address of all the instances 


# creating the EC2 instance with the public key through the terraform



