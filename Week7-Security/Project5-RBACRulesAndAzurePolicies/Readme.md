# Create RBAC rules and Azure Policies

## RBAC
1. Refer to Cloudskills/CloudSkillsBootcamp/Week7-Security/Project5-RBACRulesAndAzurePolicies/rbac-rules-azure.sh
    - Run command to create RBAC
        - Output:
        ```
        {
            "appId": "742dc71f-b094-45e8-b7ac-a4e5bf211a5e",
            "displayName": "AzDoks",
            "name": "http://AzDoks",
            "password": 
            "tenant": "72f988bf-86f1-41af-91ab-2d7cd011db47"
        }
        ```
    - Run command to create RBAC with sdk auth
        - Output:
        ```
        {
            "clientId": "742dc71f-b094-45e8-b7ac-a4e5bf211a5e",
            "clientSecret": "bgf-J2XX4u2h25u5kE66~VIvWI5b.pR-~T",
            "subscriptionId": "15aab67a-cc2e-4200-89d3-d2ad2e8bd399",
            "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
            "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
            "resourceManagerEndpointUrl": "https://management.azure.com/",
            "activeDirectoryGraphResourceId": "https://graph.windows.net/",
            "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
            "galleryEndpointUrl": "https://gallery.azure.com/",
            "managementEndpointUrl": "https://management.core.windows.net/"
        }
        ```

2. Go to AAD
    - Create a new user
    - Create a new group

3. Go to Azure Policy
    - Getting started shows a recommended guide
    