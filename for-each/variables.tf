variable "aws_ami"{
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



variable "ingress" {
    type = list 
    default = [
        {
         description = "Allow PORT 80 form public"
         from_port = 80
         to_port = 80 
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
        },
        {
         description = "Allow PORT 443 form public"
         from_port = 443
         to_port = 443 
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
        },
        {
         description = "Allow PORT 22 form public"
         from_port = 22
         to_port = 22 
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}