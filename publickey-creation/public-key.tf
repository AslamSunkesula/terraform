
resource "aws_instance" "loop" {
    
ami = var.ami_id
instance_type = "t2.micro"

key_name = aws_key_pair.deployer.key_name

#implementing the tags here 

    tags = {
        Name = "mongoDB"
    }

}




# Here we are using the file module in the public_key place to reduce hardcoding Instead of entire key 


resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops-pub")

}


