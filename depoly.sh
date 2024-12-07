#!/bin/bash
# Clone repository
git clone https://github.com/hanskkangg/hansdevhub_static_web_hosting.git
cd hansdevhub_static_web_hosting

# Set up Git user configuration
git config --global user.email "hans.kkang@gmail.com"
git config --global user.name "hans kang"

# Initialize Git and commit changes
git init
git add .
git commit -m "azure deployment after updating server.js"

# Configure Azure deployment
az webapp deployment source config-local-git --name hansdevhub --resource-group hansdevhub_group
az webapp deployment list-publishing-credentials --name hansdevhub --resource-group hansdevhub_group

# Add Azure remote and push changes
git remote add azure 'https://$hansdevhub:RBjGyesCHlxpM0gd82euFyp0EH7BdH0hqehix3h0Qtg0ZjDdkn0NkPsGXmNS@hansdevhub-cxa3cba5hmhdhyb0.scm.canadacentral-01.azurewebsites.net'
git push azure main:master
