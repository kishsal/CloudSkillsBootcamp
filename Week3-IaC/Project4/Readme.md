# Azure Bicep

1. Install Bicep ``https://github.com/Azure/bicep/blob/main/docs/installing.md``
2. Create main.bicep file
3. Run ``bicep build main.bicep ``
4. It will create a main.json file similar to an ARM template
5. Populate the main.bicep and run ``bicep build main.bicep `` to update main.json
6. Deploy to Azure ``az deployment group create --resource-group rg-arm-demo --template-file main.json -p name="cslabsstorage536"``