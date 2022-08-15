resource "aws_route_table" "RT-public" {
  vpc_id = aws_vpc.vpc-main.id
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "RT-private"
  }
}

resource "aws_route_table" "RT-private" {
  vpc_id = aws_vpc.vpc-main.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
    }
  tags = {
    Name = "RT-public"
  }

}
resource "aws_route_table_association" "rt-and-sub-pub-1" {
  subnet_id      = aws_subnet.sub-public-1.id
  route_table_id = aws_route_table.RT-public.id
}
resource "aws_route_table_association" "rt-and-sub-pub-2" {
  subnet_id      = aws_subnet.sub-public-2.id
  route_table_id = aws_route_table.RT-public.id
}

resource "aws_route_table_association" "rt-and-sub-pri-1" {
  subnet_id      = aws_subnet.sub-private-1.id
  route_table_id = aws_route_table.RT-private.id
}
resource "aws_route_table_association" "rt-and-sub-pri-2" {
  subnet_id      = aws_subnet.sub-private-2.id
  route_table_id = aws_route_table.RT-private.id
}




