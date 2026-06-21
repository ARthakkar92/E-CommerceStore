
# 🛒 E-Commerce Microservices Application Deployment

## 📌 Project Overview

This project demonstrates deployment of a **Node.js-based E-commerce Microservices Application** using modern DevOps tools.

The application consists of 5 services:

- User Service (Port 3001)
- Product Service (Port 3002)
- Cart Service (Port 3003)
- Order Service (Port 3004)
- Frontend (Port 3000)

---
## ⚙️ Technologies Used

- Node.js & Express
- React.js
- MongoDB (Docker)
- Docker & Docker Compose
- Terraform
- AWS EC2
- NGINX

---

## 🚀 Implementation Steps

### ✅ 1. Dockerization

- Created Dockerfiles for all backend services and frontend
- Built Docker images locally

✅ 2. DockerHub
Images pushed to:
ankitthakkar/user-service
ankitthakkar/product-service
ankitthakkar/cart-service
ankitthakkar/order-service
ankitthakkar/frontend

✅ 3. Infrastructure (Terraform)
Provisioned:

VPC
Public Subnet
Internet Gateway
Route Table
Security Group
EC2 Instance (t3.micro)

✅ 4. Deployment on EC2

Installed Docker via user_data
Created Docker network
Deployed:

MongoDB (mongo:4.4)
All microservices containers
Frontend container

🌐 Application Access
http://<EC2-PUBLIC-IP>:3000

✅ Features

Microservices architecture
Container-based deployment
Service-to-service communication
Infrastructure as Code (Terraform)
Cloud deployment on AWS

📸 Screenshots
