# Creating an EKS cluster

1. In AWS, search for EKS
2. Click EKS
3. Enter a clustername  `cloudskillsks` and click Next
4. Choose version `1.18`
5. For cluster role, create a new role
    - Go to IAM console
    - Create a Role
    - Select EKS from use case and choose EKS cluster
    - Provide a name and create role
6. Refresh and choose `cloudskillseks` from the list
7. Click Next
8. For networking, it's best to create your own VPC but for now use default
9. Choose all subnets
10. For Security Groups, it's  best to create a SG with only outbound access and restrict inbound
11. Cluster Endpoint, select public since the application will require public access
12. CNI, choose default and click Next
13. Enabled Audit log and click Next
14. Review and Create
    ```
    Had to remove a specific subnet since availability zone did not support EKS creation
    ```
15. Once the EKS cluster is create, click on Compute and add a node
    - Provide a name
    - Create a new role called `ec2eks` with `AmazonEC2ContainerRegistryReadOnly` policy and then assign
    - Keep defaults and click next to create worker node