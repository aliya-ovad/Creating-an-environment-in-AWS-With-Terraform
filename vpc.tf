resource "aws_vpc" "vpc-main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "vpc-main"
  }
}


