#!/bin/bash

# Create the project directory on control node
ssh -i ~/.ssh/id_rsa ec2-user@44.202.30.92 "mkdir -p ~/nodejs-service-deployment"

# Copy the application files
scp -i ~/.ssh/id_rsa -r app ec2-user@44.202.30.92:~/nodejs-service-deployment/

# Copy ansible files
scp -i ~/.ssh/id_rsa -r ansible ec2-user@44.202.30.92:~/nodejs-service-deployment/

# Copy GitHub workflow files
scp -i ~/.ssh/id_rsa -r .github ec2-user@44.202.30.92:~/nodejs-service-deployment/

# SSH into control node and set up the project
ssh -i ~/.ssh/id_rsa ec2-user@44.202.30.92 "cd nodejs-service-deployment && \
    # Install required packages if not already installed
    sudo yum update -y && \
    sudo yum install -y python3-pip && \
    pip3 install --user ansible && \
    # Run the ansible playbook
    cd ansible && \
    ansible-playbook -i inventory.ini node_service.yml"
