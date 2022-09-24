# public subnet route
resource "aws_route_table" "publicroute" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetgetaway.id
  }
  tags = {
    Name = "publicroute"
  }
}
#table association for public route table
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.publicroute.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.publicroute.id
}
