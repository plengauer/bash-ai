#!/bin/sh
set -e
echo "deb [arch=all] http://3.73.14.87:8000/ stable main" | sudo tee /etc/apt/sources.list.d/bash_ai.list
sudo apt-get update --allow-insecure-repositories
sudo apt-get install -y --allow-unauthenticated bash-ai
