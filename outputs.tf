output "private_ip" {

    value = aws_instance.loop[*].private_ip

}