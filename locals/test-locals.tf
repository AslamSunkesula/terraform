
resource "aws_key_pair" "deployer" {
  key_name   = "instance-pub"
  public_key = local.public_key


}


#Instead of giving the id from the variable, we can use the locals to store the locals (advanced) to the variable, its key and value pair, and its return to the variable.


resource "aws_instance"  "local" {
    ami = local.ami_id
    instance_type = local.instance_type 
    key_name = aws_key_pair.deployer.key_name  #====> here we are attaching the aws_key_pair to the aws_instance
}


