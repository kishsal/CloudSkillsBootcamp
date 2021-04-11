# Azure Monitor and Alerting

1. In Azure portal, search for Monitor
2. In Monitor, click on Alerts and then click Manage action
3. Create a new action group
    - Place in the same RG as project 1
    - Provide a name
    - Email notification type and enter email
    - For Action, choose Azure automation runbook
        - Choose an existing template, stop VM
        - Create an Azure auto account and place in same RG
    - Click Ok again
    - Provide a name

4. Go back to Monitor and choose Alerts
5. Create a new alert
    - Choose VM as resource
    - Choose the VM deployed in Project 1
    - For condition, select `CPU percentage`
        - Set threshold to `3` for testing
    - Choose action group
    - Set rule details

6. Go to VM and then choose Run Command
    - Choose `RunPowershellScript`
    - Enter `install-module az -force`.  This will force a CPU spike. 
    - Review output

Eventually the VM will stop and if you go to alerts, there will be an alert.


## Create a cost alerts for Subscription

1. Search for Cost Management
2. Choose Subscription
3. Click on Cost alerts
4. Click Add
     - Provide a name
     - Reset period is set to billing month
     - Amount should be 160
     - Alert conditions, choose forecasted.  Percent of budged should be 100.
     - Set email
     - Create alert
    