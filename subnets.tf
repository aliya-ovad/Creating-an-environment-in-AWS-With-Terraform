resource "aws_subnet" "sub-public-1" {
  vpc_id            = aws_vpc.vpc-main.id
  availability_zone = "eu-central-1a"
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, 1)
  tags = {
    Name = "sub-public-1"
  }
}
resource "aws_subnet" "sub-public-2" {
  vpc_id            = aws_vpc.vpc-main.id
  availability_zone = "eu-central-1b"
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, 2)
  tags = {
    Name = "sub-public-2"
  }
}
resource "aws_subnet" "sub-private-1" {
  vpc_id            = aws_vpc.vpc-main.id
  availability_zone = "eu-central-1a"
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, 3)
  tags = {
    Name = "sub-private-1"
  }
}
resource "aws_subnet" "sub-private-2" {
  vpc_id            = aws_vpc.vpc-main.id
  availability_zone = "eu-central-1b"
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, 4)
  tags = {
    Name = "sub-private-2"
  }
}

