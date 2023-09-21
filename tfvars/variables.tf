variable "aws_ami"{
    type = string
    default = "ami-03265a0778a880afb"

}


variable "instance_type" {
    type = map 

    default = {
        mongoDB = "t3.micro" 
        MySQL = "t3.micro" 
        catalogue = "t2.micro"
        redis = "t2.micro"
        Rabbitmq = "t2.micro"
        User = "t2.micro"
        Cart = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"
    }
}


variable "zone_id" {
    default = "Z035342425855QKP40L24"
}



variable "domain" {
    default = "aslamroboshop"
}



variable "sg_name" {
    type = string
  
}

variable "sg_cidr" {   #Classless Inter-Domain Routing (CIDR) is an IP address allocation method that improves data routing efficiency on the internet
    default = ["0.0.0.0/0"]
  
}