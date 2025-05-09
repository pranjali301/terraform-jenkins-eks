# Terraform Jenkins EKS Deployment

## Overview

This repository contains a set of Terraform configurations designed to automate the deployment of a Jenkins server on AWS. Once Jenkins is up and running, it is used to manage the deployment of an Elastic Kubernetes Service (EKS) cluster along with a simple NGINX application hosted on that cluster. This process is automated through Jenkins pipelines, providing an end-to-end solution for managing infrastructure as code.

## Prerequisites

Before you begin, make sure you have the following tools installed and properly configured:

- **Terraform**: Version 1.0 or later.
- **AWS CLI**: To configure AWS credentials and interact with AWS resources.
- **S3 BUCKET**: For storing state file
- **AWS Account**: Ensure your AWS account has the necessary IAM permissions to create resources such as EC2, EKS, VPC, IAM roles, etc.

## Project Structure

This repository contains the following directories:

1. **`jenkins/`**: Contains Terraform configurations for deploying Jenkins on AWS EC2 instances.
2. **`EKS/`**: Contains Terraform configurations to provision the EKS infrastructure.
3. **`Jenkinsfile`**: Defines the Jenkins pipeline configuration to automate the deployment of the EKS infrastructure and NGINX application.

## Workflow

### 1. Jenkins Deployment

The first step is to deploy a Jenkins server on AWS using Terraform. This server will manage the deployment of the EKS cluster and associated resources.

### 2. EKS Deployment

Once Jenkins is set up, it will trigger a pipeline that provisions the EKS cluster on AWS. This includes creating the necessary resources such as node groups, VPC, and security groups.

### 3. NGINX Deployment

After the EKS cluster is successfully deployed, Jenkins will use Helm to deploy an NGINX application on the newly created Kubernetes cluster. This sets up a functional Kubernetes environment with a simple web application.

## Steps to Deploy

### Step 1: Deploy Jenkins Server

1. Navigate to the `jenkins/` directory.
2. Run Terraform to provision the necessary resources for Jenkins:
   ```bash
   terraform init
   terraform apply

Once Jenkins is deployed, you can access the Jenkins dashboard to start configuring your AWS credentials and managing infrastructure deployments.

### Step 2: Configure Jenkins
1. Log into Jenkins using the default credentials.

2. Set up your AWS credentials in Jenkins, allowing it to interact with AWS services to create the EKS infrastructure.

### Step 3: Set Up Jenkins Pipeline

1. Create a Jenkins pipeline using the provided Jenkinsfile.

2. The pipeline will:

Initialize the Terraform configurations.

Deploy the EKS infrastructure on AWS.

Deploy nginx application.

### Step 4: Deploy NGINX on EKS
After the EKS cluster is created, the Jenkins pipeline will automatically  deploy an NGINX application on the Kubernetes cluster. This creates a simple, functional web application running on EKS.

### Clean Up Resources
To remove all the resources created by Terraform, run the following command in both the jenkins/ and eks/ directories:

terraform destroy

This will delete the Jenkins server, EKS cluster, and any associated resources, ensuring that no lingering infrastructure remains.

## Conclusion
This repository provides a full CI/CD pipeline to deploy and manage infrastructure on AWS using Terraform and Jenkins. By deploying Jenkins first, followed by an EKS cluster and an NGINX app, this setup demonstrates a complete workflow for managing AWS infrastructure with Kubernetes. You can extend this setup to deploy more complex applications and infrastructure in the future.
