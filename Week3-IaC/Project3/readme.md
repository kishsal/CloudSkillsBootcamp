# Testing Infra as Code

## With AWS

1. Install GO Lang (https://golang.org/doc/install)
2. Create new folder Testing/terraform-aws-webserver
3. Copy EC2 files from previous project and place in new folder
4. Create new folder path Testing/terraform-aws-webserver/examples/webserver
5. Copy MAIN main.tf file and place webserver folder
6. Update main.tf file with vars
7. Create new variables.tf file under webserver folder and create variables
8. Create new output.tf file under webserver and create output
9. Create test folder and test file 
10. Once test folder is updated, enter ``go get -t -v`` to download all libraries --> Run go env -w GO111MODULE=auto
11. Run ``aws configure``
12. Then run ``ksalgado-mn2:test ksalgado$ go test -v webserver_test.go ``



## Delete large files before committing to GIT repo
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch Week3/Project3/Testing/terraform-azure-webserver/examples/webserver/.terraform/providers/registry.terraform.io/hashicorp/azurerm/2.46.0/darwin_amd64/terraform-provider-azurerm_v2.46.0_x5'