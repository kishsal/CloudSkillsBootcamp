# Security Authentication in Code
## MSI test

1. Create a VM in Azure
    - Choose Windows 2019 datacenter
    - Set password

2. Create a keyvault
    - Create keyvault in same RG as VM
    - Create Secret
    - Create access policy for secret (get and list) and choose VM

3. Go the VM and choose identity
    - Set system assigned to ON
    - Select Azure Role Assignments
    - Select Keyvault

4. RDP into the VM
    - Open Powershell ISE
    - Install AZ module
    - Create a script to authenticate with azure
    ```powershell
    Add-AzAccount -identity

    $password = Get-AzKeyVaultSecret -vaultname cslab888kv -Name importantPassword

    $password | gm

    $password.SecretValue
    ```