az group create --resource-group "rg-arm-demo" --location "eastus"

ksalgado$ az deployment group create --resource-group "rg-arm-demo" --template-file "template.json" -p adminPassword="P@$$W0rdP@$$w0rd"  