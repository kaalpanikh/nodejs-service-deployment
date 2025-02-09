# Node.js Service Deployment

## Overview
This project involves deploying a Node.js service on AWS using Ansible for configuration management and GitHub Actions for continuous deployment. The infrastructure consists of a Control Node (Amazon Linux) and a Target Node (Ubuntu).

## Key Features
- **Node.js Application**: A simple Node.js application that responds with "Hello, world!" and includes a health check endpoint.
- **Ansible Configuration**: Ansible playbook for installing Node.js, npm, and PM2, cloning the application repository, and configuring Nginx as a reverse proxy.
- **GitHub Actions**: Automated deployment of the Node.js service to the Target Node.

## Project Page
For more details, visit the project page: [Node.js Service Deployment](https://roadmap.sh/projects/nodejs-service-deployment)

## Requirements
- AWS account
- Basic knowledge of Node.js, Ansible, and GitHub Actions

## Getting Started
1. Clone the repository.
2. Set up the required AWS infrastructure.
3. Run the Ansible playbook to deploy the application.
4. Access the application via the specified domain.

## License
This project is licensed under the MIT License.