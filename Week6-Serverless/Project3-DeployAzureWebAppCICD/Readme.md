# Deploy an Azure Web App via CICD in Github Actions

1. From `https://github.com/kizzle911/javascript-sdk-demo-app` set up Actions
    - Click on Actions
    - Select New Workflow
    - Select Own Worflow
    - Delete existing code and paste the following: `https://github.com/CloudSkills/Cloud-Native-DevOps-Bootcamp/blob/main/Week%206%20-%20Serverless%20in%20Azure%20and%20AWS/GitHub-Action/main.yml` to the main.yml
    - Ensure `AZURE_CREDENTIALS` secret is created.  Refer to Cloudskills/CloudSkillsBootcamp/Week5-CICD/Project3-DeployTerraformViaGithubActions/Readme.md
     ```
    {
    "clientId": "a643cf13-f0df-4212-a85f-d6ab46acf910",
    "subscriptionId": "15aab67a-cc2e-4200-89d3-d2ad2e8bd399",
    "clientSecret": "xxxxx",
    "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }
    ```
    - Ensure RG exists and unique names used for WebApp
    - Commit the changes to trigger action
<br>
2. Once the action is completed, launch the webapp and check the URL


