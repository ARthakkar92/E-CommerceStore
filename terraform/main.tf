
provider "aws" {
  region = "ap-south-1"
}

# -----------------------
# VPC
# -----------------------
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# -----------------------
# SUBNET
# -----------------------
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# -----------------------
# INTERNET GATEWAY
# -----------------------
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

# -----------------------
# ROUTE TABLE
# -----------------------
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "internet" {
  route_table_id         = aws_route_table.rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.rt.id
}

# -----------------------
# SECURITY GROUP
# -----------------------
resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 3000
    to_port     = 3004
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -----------------------
# EC2 INSTANCE
# -----------------------
resource "aws_instance" "app" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = "t3.micro"
  key_name               = "Ankit_AWS"

  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash

apt update -y
apt install -y docker.io

systemctl start docker
systemctl enable docker

# Create Docker network
docker network create ecommerce-net

# MongoDB
docker run -d \
  --name mongodb \
  --network ecommerce-net \
  -p 27017:27017 \
  mongo:4.4

sleep 20

# User Service
docker run -d \
  --name user-service \
  --network ecommerce-net \
  -p 3001:3001 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_users \
  -e JWT_SECRET=secret123 \
  ankitthakkar/user-service

# Product Service
docker run -d \
  --name product-service \
  --network ecommerce-net \
  -p 3002:3002 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_products \
  ankitthakkar/product-service

# Cart Service
docker run -d \
  --name cart-service \
  --network ecommerce-net \
  -p 3003:3003 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_carts \
  -e PRODUCT_SERVICE_URL=http://product-service:3002 \
  ankitthakkar/cart-service

# Order Service
docker run -d \
  --name order-service \
  --network ecommerce-net \
  -p 3004:3004 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_orders \
  -e CART_SERVICE_URL=http://cart-service:3003 \
  -e PRODUCT_SERVICE_URL=http://product-service:3002 \
  -e USER_SERVICE_URL=http://user-service:3001 \
  ankitthakkar/order-service

# Frontend
docker run -d \
  --name frontend \
  --network ecommerce-net \
  -p 3000:80 \
  ankitthakkar/frontend

EOF

  tags = {
    Name = "Ecommerce-App"
  }
}
