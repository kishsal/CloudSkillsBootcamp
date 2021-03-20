# Project 2 - Deploy Azure Web App

1. Create terraform files (Copy code from `https://github.com/CloudSkills/Cloud-Native-DevOps-Bootcamp/tree/main/Week%206%20-%20Serverless%20in%20Azure%20and%20AWS/Terraform`)
    - main.tf (Ensure RG is created)
    - variables.tf
    - terraform.tfvars (Ensure appService name is unique)
<br> 
2. Run `terraform init`
3. Run `terraform plan`
4. Run `terraform apply` and confirm by entering yes
<br>
5. Go to the WebApp and click on Deployment Center
    - Select Github
    - Select App Service build service
    - Choose repo `javascript-sdk-demo-app`
    - Finish
<br>
6. Click on the URL to verify deployment