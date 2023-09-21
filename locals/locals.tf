locals {
    ami_id = "ami-03265a0778a880afb"
     public_key = file("${path.module}/devops-pub")
     instance_type = var.isDev ?  "t2.micro" : "t3.micro"
}