#!/bin/bash

# Install Node.js and npm
sudo apt-get install -y nodejs npm

# Install Docker
sudo apt-get install -y docker.io

# Change to the project directory
cd ./ReactNodeTesting

# Install npm dependencies
npm install

# Navigate back to the previous directory
cd -

# Install dependencies for Docker
sudo apt-get install -y ca-certificates curl gnupg

# Install Docker GPG key
sudo install -y -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list
sudo apt-get update

# Install Docker components
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose
sudo service docker start

# Build Docker image
sudo docker build -t app .

# Run Docker Compose
sudo docker-compose up -d
