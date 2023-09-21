resource "aws_instance" "roboshop" {

#Here we are using the for-each loop to interate the all the instance_types ... so we declared the all the instance_types in the variable.tf file data_type is we set to the map 

    for_each=var.instance_type
     ami = var.aws_ami
     instance_type = each.value

 #Maps in Terraform are a data type that associates values to keys
 #We have one specical variable called "each" to fetch the key and value pair.

     tags = {
        Name = each.key  #Here only fetch the key it means server instance_names
     }
    

}


# output "aws_instance_info" {
#   value = aws_instance.roboshop
# }


#String interpolation: This type of interpolation is used to embed variables or expressions within a string. It is denoted by ${} within a string.

resource "aws_route53_record" "www" {
 for_each = aws_instance.roboshop
  name            = "${each.key}.${var.domain}"
  ttl             = 1
  type            = "A"
  zone_id         = var.zone_id

  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
}

