# DevOps Project 1 - Brain Tasks App

## Application
React-based Brain Tasks application deployed to production using AWS EKS, ECR, CodeBuild and CodePipeline.

## Repository
Source: https://github.com/Vennilavanguvi/Brain-Tasks-App.git

## Infrastructure
- AWS EC2 t3.small (Amazon Linux 2023) - Management instance
- AWS EKS cluster: project1-eks-cluster (ap-south-2)
- AWS ECR: brain-tasks-app repository
- AWS CodeBuild: brain-tasks-codebuild
- AWS CodePipeline: brain-tasks-pipeline

## Docker Setup
- Base Image: nginx:alpine
- App served on port 3000
- Image pushed to AWS ECR

## Kubernetes
- Deployment: 2 replicas
- Service: LoadBalancer type on port 80 → 3000
- LoadBalancer URL: a7c4b4474ab9b4761be1dd4a5d12a53b-139767472.ap-south-2.elb.amazonaws.com

## CI/CD Pipeline
- Source: GitHub (main branch)
- Build: AWS CodeBuild using buildspec.yml
- Deploy: kubectl apply to EKS via CodeBuild post_build phase
- Trigger: Auto-triggers on every GitHub push

## Monitoring
- CloudWatch Logs: /aws/codebuild/brain-tasks-codebuild
- Tracks build, deploy, and application logs

## Submission
- GitHub: https://github.com/Rajkumar-dev005/devops-project-1
- LoadBalancer ARN: a7c4b4474ab9b4761be1dd4a5d12a53b-139767472.ap-south-2.elb.amazonaws.com
