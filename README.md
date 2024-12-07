# Azure Web App Deployment Script

This repository contains a `deploy.sh` script that automates the deployment of a static web application to Azure Web Apps. The script performs tasks such as configuring Git, committing changes, and deploying updates to the Azure Web App instance.

## Features
- Clone your repository locally.
- Initialize Git and configure user details.
- Commit and push updates to Azure Web Apps.
- Automate repetitive deployment tasks.

## Prerequisites
Before using this script, ensure you have the following installed:
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Git](https://git-scm.com/)
- Bash shell (e.g., Git Bash, WSL, or any Unix-like environment)

## Usage
1. Clone this repository or copy the `deploy.sh` script to your local machine.
2. Make the script executable:
   ```bash
   chmod +x deploy.sh
