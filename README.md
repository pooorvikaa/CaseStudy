# CaseStudy
# Three-Tier Application in Azure using Terraform

This repository contains Terraform configurations to design and deploy a three-tier application architecture in Azure. The architecture includes a Presentation Tier, Application Tier, and Database Tier.

### 1. Presentation Tier
- **Azure Application Gateway**: Acts as the entry point for the application. It handles HTTP/HTTPS traffic and forwards requests to the backend.

### 2. Application Tier
- **Azure Virtual Machines (VMs)**: Host the core application services.
- **Virtual Machine Scale Sets (VMSS)**: Provide scalability and availability for the application services.

### 3. Database Tier
- **Azure SQL Database**: Stores the application's data.

## Rationale Behind Choices

- **Azure Application Gateway**: Provides Layer 7 load balancing, which is ideal for web applications as it can handle HTTP/HTTPS traffic, provide SSL termination, and offer routing features.
- **Azure Virtual Machines (VMs) and VM Scale Sets (VMSS)**: Offer flexibility, scalability, and high availability for the application services.
- **Azure SQL Database**: A managed database service that provides built-in high availability, backups, and scalability.

## Deployment Process
Step 1: Initialize Terraform
Step 2: terraform plan
Step 3: terraform validate
Step 4: terraform apply
