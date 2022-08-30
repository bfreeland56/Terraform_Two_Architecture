# Create VPC Security Groups
resource "aws_security_group" "publicsg1" {
  name        = "publicsg1"
  description = "Allow traffic from VPC"
  vpc_id      = aws_vpc.worldknown.id
  depends_on = [
    aws_vpc.worldknown
  ]

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
  }
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "worldknown"
  }
}

# Create security group for ALB
resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  description = "security group for the load balancer"
  vpc_id      = aws_vpc.worldknown.id
  depends_on = [
    aws_vpc.worldknown
  ]


  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "alb_sg"
  }
}
