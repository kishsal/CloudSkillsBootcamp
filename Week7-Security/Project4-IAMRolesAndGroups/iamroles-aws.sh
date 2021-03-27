#Create an IAM user
aws iam create-user --user-name john

# Create an IAM group
aws iam create-group --group-name Johns-group

# Add user to group
aws iam add-user-to-group --user-name john --group-name Johns-group

# Remove user from group
aws iam remove-user-from-group --user-name john --group-name Johns-group
