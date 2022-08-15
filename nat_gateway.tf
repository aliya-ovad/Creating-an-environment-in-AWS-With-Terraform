resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.elastic-ip.id
  subnet_id     = aws_subnet.sub-public-1.id
  tags = {
    Name = "nat-gw"
  }
  depends_on = [aws_internet_gateway.igw]
}
resource "aws_eip" "elastic-ip" {
  tags = {
    Name = "elastic-ip"
  }
}

