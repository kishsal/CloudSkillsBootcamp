# Project 3: Deploying Terraform via GitHub Actions

1. Login to Azure by entering `az login`
2. Copy subscriptionId
3. Create Service Principal by entering `az ad sp create-for-rbac -n "TestTerraformSP" --role Contributor --scopes /subscriptions/15aab67a-cc2e-4200-89d3-d2ad2e8bd399`
4. Copy output and save it somewhere
5. Go to https://github.com/CloudSkills/terraform-ghactions and fork
6. Click on Settings and Secret
    - Create new repository secret called `AZURE_CREDENTIALS` and enter copied output from above
    - Update to the following:
    ```
    {
    "clientId": "a643cf13-f0df-4212-a85f-d6ab46acf910",
    "subscriptionId": "15aab67a-cc2e-4200-89d3-d2ad2e8bd399",
    "clientSecret": "xxxxx",
    "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }
    ```

    - Create new repository secret called `ARM_CLIENT_SECRET` and paste secret

7. Click on Actions and select Set Up Workflow yourself
    - Update Name
    - Add env to the workflow after runs-on:
    ```
    env:
      ARM_SUBSCRIPTION_ID: '15aab67a-cc2e-4200-89d3-d2ad2e8bd399'
      ARM_TENANT_ID: '72f988bf-86f1-41af-91ab-2d7cd011db47'
      ARM_CLIENT_ID: 'a643cf13-f0df-4212-a85f-d6ab46acf910'
      ARM_CLIENT_SECRET: ${{ secrets.ARM_CLIENT_SECRET }}
    ```

    - Refer to workflow for remaining updates (https://github.com/kizzle911/terraform-ghactions)

8. Once workflow is completed, then commit to trigger the action
