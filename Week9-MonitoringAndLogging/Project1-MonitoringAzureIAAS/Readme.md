# Monitoring Azure IaaS

1. In Azure portal, create a new Windows VM
2. Then create a Log Analytics Workspace.   Place it in the same RG as the VM
3. Go to Log Analytics resource and click on Virtual Machines
4. Search for the VM name that was deployed in step 1 and click connect.
5. Once the VM is connected, go to the VM and click on Insights and Diagnostics, enable for both.
6. Once Insight is deployment, make sure to upgrade

Insights allows you to view performance monitor on the VM