# 🚀 Terraform AWS EC2 Automation Project

This project automates the provisioning and configuration of an AWS EC2 instance using **Terraform**.  
It demonstrates Infrastructure-as-Code (IaC) best practices with automated networking, security, key-pair management, boot-time NGINX installation, and public web access.

---

## 📌 Overview

This Terraform configuration performs:

- Creation of EC2 Instance (Amazon Linux 2023)
- Security Group with ports **22 (SSH)**, **80 (HTTP)**, **8000 (App)**  
- Automatic NGINX installation using `user_data`
- Key Pair creation and attachment
- Deployment inside AWS Default VPC
- Fully automated, repeatable IaC workflow

---

## 🏗️ Architecture Diagram

             ┌────────────────────────────┐
             │        Terraform CLI        │
             └──────────────┬─────────────┘
                            │
                            ▼
                 ┌───────────────────────┐
                 │     AWS Provider      │
                 └──────────┬────────────┘
                            │
       ┌────────────────────┼─────────────────────┐
       ▼                    ▼                     ▼
         
## 🚀 Features

- **EC2 Instance Provisioning** (Amazon Linux 2023)
- **Custom Security Group**  
  - SSH → Port **22**  
  - HTTP → Port **80**  
  - Custom App → **8000**
  - Full outbound traffic enabled  
- **Key Pair Management** (for SSH authentication)
- **Boot-Time Automation**  
  - Installs and starts **NGINX** web server  
- **Uses AWS Default VPC** (no custom networking required)
- **Idempotent IaC Workflow**  
  Terraform ensures predictable deployment every time.

---

## 🛠️ Tech Stack

- **Terraform**
- **AWS EC2**
- **AWS Security Groups**
- **AWS VPC**
- **NGINX**
- **Linux (Amazon Linux 2023)**
- **Git Bash / WSL / VS Code**

---

## 📦 Project Structure


terraform-ec2-automation-devops/
│
├── ec2.tf # EC2 instance + SG + Key Pair
├── providers.tf # AWS provider
├── install_nginx.sh # User-data script for NGINX
├── terra-key-ec2 # SSH private key (local only)
├── terra-key-ec2.pub # Public key
└── README.md # Documentation

👤 Author

# 👋 Hi, I'm Souvik De  

Full Stack Developer & DevOps/Cloud Enthusiast  
Experienced in PHP, Laravel, React, Node.js, DevOps tools & AWS Cloud.

---

## 🛠️ Tech Stack

<!-- ADD YOUR LOGOS HERE -->

![Terraform](https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![DevOps](https://img.shields.io/badge/DevOps-0A66C2?style=for-the-badge&logo=azuredevops&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)


🔗 GitHub: https://github.com/souvikde319

🔗 LinkedIn: https://www.linkedin.com/in/souvik-de

If you like this project, please ⭐ the repository!