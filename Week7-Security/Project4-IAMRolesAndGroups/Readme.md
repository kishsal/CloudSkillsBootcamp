# Creating IAM roles users and groups

1. Refer to iamroles-aws.sh
    - Create user
    ```
        ksalgado-mn2:Week7-Security ksalgado$ aws iam create-user --user-name john
    {
        "User": {
            "Path": "/",
            "UserName": "john",
            "UserId": "AIDA2SUVBVEEZT47ORFIL",
            "Arn": "arn:aws:iam::727235799305:user/john",
            "CreateDate": "2021-03-27T16:25:21+00:00"
        }
    }
    ```
    - Create group
    ```
        ksalgado-mn2:Week7-Security ksalgado$ aws iam create-group --group-name Johns-group
    {
        "Group": {
            "Path": "/",
            "GroupName": "Johns-group",
            "GroupId": "AGPA2SUVBVEE5GGE3DNLF",
            "Arn": "arn:aws:iam::727235799305:group/Johns-group",
            "CreateDate": "2021-03-27T16:25:30+00:00"
        }
    }
    ```

2. Assign permission to group
3. Create Role