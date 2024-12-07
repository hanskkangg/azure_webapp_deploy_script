# Azure Web App Deployment Script

This repository contains a `deploy.sh` script that automates the deployment of a web application to Azure Web Apps. The script performs tasks such as configuring Git, committing changes, and deploying updates to the Azure Web App instance.

## Features
- Clone repository locally.
- Initialize Git and configure user details.
- Commit and push updates to Azure Web Apps.
- Automate repetitive deployment tasks.

## Tools
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) for managing Azure resources.
- [Git](https://git-scm.com/) for version control and pushing changes.
- A shell environment ( Git Bash)

## How to Use  
1. Clone this repository or copy the `deploy.sh` script to your local machine.
2. Make the script executable:
   ```bash
   chmod +x deploy.sh
