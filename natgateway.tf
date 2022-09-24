resource "aws_eip" "lb" {

}

resource "aws_nat_gateway" "natgateway1" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.publicsubnet1.id
}