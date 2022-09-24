#private subnets route
resource "aws_route_table" "privateroute" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway1.id
  }

  tags = {
    Name = "privateroute"
  }

}

#table association for private route table
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.privatesubnet1.id
  route_table_id = aws_route_table.privateroute.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.privatesubnet2.id
  route_table_id = aws_route_table.privateroute.id
}