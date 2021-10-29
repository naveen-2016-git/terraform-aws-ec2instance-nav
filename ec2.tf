variable "os" {
  type = string
  default = "ami-02e136e904f3da870"
}

variable "hw" {
default = "t2.nano"
}

variable "key" {
default = "naveen-25oct"
}

resource "aws_instance" "navawsserver" {
  ami = var.os
  instance_type = var.hw
  key_name = var.key
  tags = {
    Name = "Naveen-aws-ec2-instance-v3"
    Env = "Dev"
  }
}

output "myawsserver-ip" {
  value = aws_instance.navawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.navawsserver.private_ip
}
