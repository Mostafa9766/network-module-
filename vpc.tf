resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
tags = {
    Name = "main"
  }
  provisioner "local-exec" {
command = "echo $[self.id]> provisioner.txt"
}    
  }
  
