# Create 2 Public Subnets
resource "aws_subnet" "public_subnet1a" {
  vpc_id            = aws_vpc.worldknown.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public subnet 1a"
  }
}

resource "aws_subnet" "public_subnet1b" {
  vpc_id            = aws_vpc.worldknown.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "public subnet 1b"
  }
}


# Create 2 Private Subnets
resource "aws_subnet" "private_subnet_1a" {
  vpc_id                  = aws_vpc.worldknown.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "private subnet_1a"
  }
}
resource "aws_subnet" "private_subnet_1b" {
  vpc_id                  = aws_vpc.worldknown.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "private subnet 1b"
  }
}
