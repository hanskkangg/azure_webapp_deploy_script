#!/bin/bash

# ================================
# 🚀 Azure Web App Deployment Script
# ================================

# 1. Clone repository
git clone https://github.com/hanskkangg/hansdevhub_static_web_hosting.git
cd hansdevhub_static_web_hosting || exit

# 2. Set up Git user configuration
git config --global user.email "your-email@example.com"
git config --global user.name "your-name"

# 3. Initialize Git and commit changes
git init
git add .
git commit -m "Azure deployment after updating server.js"

# 4. Configure Azure CLI deployment (if not already configured)
az webapp deployment source config-local-git \
  --name hansdevhub \
  --resource-group hansdevhub_group

# 5. Prompt for publishing credentials securely
echo "Enter your Azure deployment credentials"
read -p "Azure Username: " AZURE_USER
read -s -p "Azure Password: " AZURE_PASS
echo ""

# 6. Add Azure remote with credentials
REMOTE_URL="https://${AZURE_USER}:${AZURE_PASS}@hansdevhub-cxa3cba5hmhdhyb0.scm.canadacentral-01.azurewebsites.net"
git remote add azure "$REMOTE_URL"

# 7. Push to Azure Web App
git push azure main:master
