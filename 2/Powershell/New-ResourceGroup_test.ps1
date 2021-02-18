# To run the test:
# invoke-pester .\New-ResourceGroup_test.ps1

Describe "New-ResourceGroup" {
    $location = 'eastus2'
    $name - 'cloudskillsbootcamp'

    It "Name should be cloudskillsbootcamp" {
        $name | Should be 'cloudskillsbootcamp'
    }

    It "location should be eastus2" {
        $location | Should be 'eastus2'
    }
}