resource "aws_instance" "condition" {
    ami = var.ami_id
    instance_type = var.instance_name == "mongoDB" ? "t2.micro" : "t3.micro"

tags = {
    Name = "mongoDB"
}

}
