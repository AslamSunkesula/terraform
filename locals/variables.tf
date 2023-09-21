variable "ami_id" {
   default = "ami-03265a0778a880afb"
}


variable "instance_names" {
    type = list

    default = ["mongoDB" , "catalogue" , "cart" , "user" ,"redis" , "mysql" , "payment" , "rabbitmq" ,"shipping" ,"web"]
}


variable "domain" {
    default = "aslamroboshop.online"

}


variable "zone_id" {
default = "Z035342425855QKP40L24"

}


variable "isDev" {
    default = true 
}