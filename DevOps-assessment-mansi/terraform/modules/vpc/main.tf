
# VPC

resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "mansi-vpc"
  }
}


# PUBLIC SUBNETS

resource "aws_subnet" "public" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnets[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index}"
    "kubernetes.io/cluster/mansi-eks" = "shared"
    "kubernetes.io/role/elb"          = "1"
  }
}


# PRIVATE SUBNETS

resource "aws_subnet" "private" {
  count             = length(var.private_subnets)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "private-subnet-${count.index}"
    "kubernetes.io/cluster/mansi-eks"    = "shared"
    "kubernetes.io/role/internal-elb"    = "1"
  }
}


# INTERNET GATEWAY

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
}


# ELASTIC IP FOR NAT

resource "aws_eip" "nat_eip" {
  tags = {
    Name = "mansi-nat-eip"
  }
}


# NAT GATEWAY

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public[0].id

  depends_on = [aws_internet_gateway.igw]
}


# PUBLIC ROUTE TABLE

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.this.id
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_assoc" {
  count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_rt.id
}


# PRIVATE ROUTE TABLE (NAT)

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.this.id
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

resource "aws_route_table_association" "private_assoc" {
  count          = length(aws_subnet.private)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private_rt.id
}