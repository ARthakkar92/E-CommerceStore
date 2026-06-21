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
Frontend (React :3000)
|
|        |        |        |
User   Product   Cart    Order
3001   3002      3003     3004
|
MongoDB (27017)

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

<img width="1590" height="301" alt="image" src="https://github.com/user-attachments/assets/22565440-9781-4165-a8ee-4ca8815d24d5" />

- Built Docker images locally

<img width="1515" height="221" alt="image" src="https://github.com/user-attachments/assets/343a36d9-8b85-44f4-87d1-da599bd7fa2f" />


---

### ✅ 2. Local Testing

docker compose up --build

✅ 3. DockerHub
Images pushed to:
ankitthakkar/user-service
ankitthakkar/product-service
ankitthakkar/cart-service
ankitthakkar/order-service
ankitthakkar/frontend


✅ 4. Infrastructure (Terraform)
Provisioned:

VPC
Public Subnet
Internet Gateway
Route Table
Security Group
EC2 Instance (t3.micro)

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
Frontend (React :3000)
|
|        |        |        |
User   Product   Cart    Order
3001   3002      3003     3004
|
MongoDB (27017)

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

<img width="1590" height="301" alt="image" src="https://github.com/user-attachments/assets/22565440-9781-4165-a8ee-4ca8815d24d5" />

- Built Docker images locally

<img width="1515" height="221" alt="image" src="https://github.com/user-attachments/assets/343a36d9-8b85-44f4-87d1-da599bd7fa2f" />


---

### ✅ 2. Local Testing

```bash
docker compose up --build

✅ 3. DockerHub
Images pushed to:
ankitthakkar/user-service
ankitthakkar/product-service
ankitthakkar/cart-service
ankitthakkar/order-service
ankitthakkar/frontend


✅ 4. Infrastructure (Terraform)
Provisioned:

VPC
Public Subnet
Internet Gateway
Route Table
Security Group
EC2 Instance (t3.micro)

<img width="1084" height="700" alt="image" src="https://github.com/user-attachments/assets/46ca3f11-e082-4b77-9d25-9e33dfbdc466" />

<img width="2064" height="316" alt="image" src="https://github.com/user-attachments/assets/60dcf2b9-f5b0-48a0-90d6-5f31350dcaa4" />




✅ 5. Deployment on EC2

Installed Docker via user_data
Created Docker network
Deployed:

MongoDB (mongo:4.4)
All microservices containers
Frontend container

🌐 Application Access

<img width="1784" height="950" alt="image" src="https://github.com/user-attachments/assets/8fdea0ae-e71a-4d4b-b645-80922b94b178" />


🧪 API Testing
Example:

<img width="711" height="242" alt="image" src="https://github.com/user-attachments/assets/ac564087-f18f-466c-9fed-c2e9e7032d11" />



✅ 5. Deployment on EC2

Installed Docker via user_data
Created Docker network
Deployed:

MongoDB (mongo:4.4)
All microservices containers
Frontend container

🌐 Application Access

<img width="1784" height="950" alt="image" src="https://github.com/user-attachments/assets/8fdea0ae-e71a-4d4b-b645-80922b94b178" />


🧪 API Testing
Example:

<img width="711" height="242" alt="image" src="https://github.com/user-attachments/assets/ac564087-f18f-466c-9fed-c2e9e7032d11" />
