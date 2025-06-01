# 🛠️KubeAutoStack
This project provisions a highly available and secure Kubernetes-ready AWS infrastructure using Terraform. It includes the automated setup of a VPC, public/private/intra subnets across multiple availability zones, internet gateway, NAT gateway, route tables, and security groups. Designed for scalability and modularity, this infrastructure serves as a foundation for deploying Kubernetes clusters and containerized applications in a production-grade environment.

## Workflow

## 🔧 EKS Cluster Architecture Overview
Alternatively, here are a few more options you can choose from based on your documentation style:
- 📦 EKS Node & Workload Structure
- 🏗️ EKS Deployment Workflow
- 🧩 EKS Cluster Node & Service Mapping
- 🚀 EKS Infrastructure & Application Flow
- 🎯 Kubernetes Workload Distribution on EKS

  ```
  EKS Cluster
  ├── EC2 Node 1 ─┐
  │              │
  │              └──> [ prod → Deployment → Service → Pods ]
  │
  └── EC2 Node 2 ─┘
  ```

## 1. Setup & Initialization
1. To get started we first need to clone the project.
   
2. Clone the Project via Git
   ```
   git clone https://github.com/varunsainadh-116/KubeAutoStack
   ```
3. To get started, first change directory:
   ```
   cd KubeAutoStack
   ```
4. Initialize Terraform
   ```
   terraform init
   ```
5. Validate the Configuration
   ```
   terraform validate
   ```
6. Review the Planned Infrastructure
   ```
   terraform plan
   ```
7. Apply the Configuration
   ```
   terraform apply
   ```
8. (Optional) Destroy the Infrastructure
   ```
   terraform destroy
   ```
