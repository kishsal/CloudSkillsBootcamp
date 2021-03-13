# Deploying a C# WebApp via Azure DevOps

1. In Azure portal, search Marketplace for devops starter
2. Select .Net
3. Select .NetCore
4. Select Windows Web App
5. Authorize Github
6. Enter repo name and a unique webapp name (repo: https://github.com/kizzle911/cloudskillscicddemo)
7. Click Create
8. Click Authorize to view Github build
9. Now go to Github and go to the created repo
    - Review the yaml file
10. Once the build is completed, you can launch the website.
11. Now update the index.cshtml file from github and commit the changes to trigger another build
12. Once the build is completed, you can refresh the browser to see the change
13. Now delete the devops starter to remove all of the resources. This won't delete the github repo that was created



