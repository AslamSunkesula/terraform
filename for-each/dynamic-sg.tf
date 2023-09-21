resource "aws_security_group" "roboshop" {


#dynamic block

#count or for each is to create more resources with single syntax

#suppose we must create the ingress for production env allowing the "Allow HTTP HTTPS SSH" so here we can go for dynamic block

   name = "roboshop" 
   description = "Allow HTTP HTTPS SSH"

  dynamic  ingress {
    for_each = var.ingress  #here you will get a variable ingress
    content {
    description      = ingress.value["description"]
    from_port        = ingress.value.from_port
    to_port          = ingress.value["to_port"]
    protocol         = ingress.value.protocol
    cidr_blocks      = ingress.value.cidr_blocks
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]


  }
    #tags mean we are giving the name for aws_security_group as "roboshop."
      tags = {       
    Name = "roboshop"    
  }

  
  }
