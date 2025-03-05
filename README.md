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

# For the Architecture diagram refer the below
architecture-diagram.png

**# All configurations are in main.tf. The file includes:**
Resource Group creation
Virtual Network (VNet) & Subnets (Public & Private)
Network Security Groups (NSGs)
Route Table for Internet access
Azure Application Gateway for Load Balancing
Virtual Machine Scale Set (VMSS) for auto-scaling
Azure SQL Database setup

**# Steps on how it is configured: **
- **Resource Group Creation:** Create a container to organize and manage related Azure resources (resource group).
- **Virtual Network (VNet) & Subnets (Public & Private):** Establish a secure, isolated network within Azure (VNet) and segment it into public (accessible from the internet) and private (internal use only) subnets.
- **Network Security Groups (NSGs): **Define security rules to control inbound and outbound traffic for resources in both public and private subnets.
- **Route Table for Internet Access:** Create custom routes to direct traffic to the internet for the public subnet.
- **Azure Application Gateway for Load Balancing:** Implement a web traffic load balancer in the public subnet to manage traffic to your web applications.
- **Virtual Machine Scale Set (VMSS) for Auto-Scaling:** Deploy and manage a set of identical, auto-scaling virtual machines in the private subnet.
- **Azure SQL Database Setup:** Set up a fully managed relational database service for your application's data, accessible from both subnets depending on your configuration.

## Deployment Process
Step 1: Initialize Terraform
Step 2: terraform plan
Step 3: terraform validate
Step 4: terraform apply
