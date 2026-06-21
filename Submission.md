
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

<img width="1984" height="378" alt="image" src="https://github.com/user-attachments/assets/ab7d0136-5b9c-4525-a19e-192de4a5ae37" />


<img width="1572" height="481" alt="image" src="https://github.com/user-attachments/assets/d4fd980f-d3ae-4602-a11c-72a56465a9bb" />


<img width="1084" height="700" alt="image" src="https://github.com/user-attachments/assets/2151950a-3ed5-48ae-b8ec-bea8006361f2" />

<img width="2064" height="316" alt="image" src="https://github.com/user-attachments/assets/36544817-e77f-4938-8eac-99f61f094814" />


<img width="1784" height="950" alt="image" src="https://github.com/user-attachments/assets/9f849cda-4c06-493d-9edd-da18ce3c07dc" />

<img width="688" height="196" alt="image" src="https://github.com/user-attachments/assets/b6147853-05b1-4f7f-be16-df5182870ad3" />




