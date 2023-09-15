resource "aws_security_group" "allow_all" {

    name = var.sg_name
    description = var.sg_decription

    ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr

  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #all protocols
    cidr_blocks      = var.sg_cidr
  

}

}