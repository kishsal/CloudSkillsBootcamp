# Create RBAC 
az ad sp create-for-rbac -n "AzDoks" --role Contributor --scopes /subscriptions/15aab67a-cc2e-4200-89d3-d2ad2e8bd399

# Create an RBAC for SDK/programmatic access
az ad sp create-for-rbac -n "AzDoks" --role Contributor --scopes /subscriptions/15aab67a-cc2e-4200-89d3-d2ad2e8bd399 --sdk-auth