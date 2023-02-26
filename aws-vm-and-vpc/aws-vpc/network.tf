resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-terraform"
  }
}

resource "aws_subnet" "subnet_vpc" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}

resource "aws_internet_gateway" "internet_geteway_vpc" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "internet_geteway_vpc-terraform"
  }
}

resource "aws_route_table" "route_table_vpc" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_geteway_vpc.id
  }

  tags = {
    "Name" = "route-table-terraform"
  }
}

resource "aws_route_table_association" "rta_vpc" {
  subnet_id      = aws_subnet.subnet_vpc.id
  route_table_id = aws_route_table.route_table_vpc.id
}

resource "aws_security_group" "asg_vpc" {
  name   = "security group terraform"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}