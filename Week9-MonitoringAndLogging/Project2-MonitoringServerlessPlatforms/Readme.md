# Monitoring Serverless platforms

1. Go to AWS and search for lambda
2. Click on Function and Create Function
3. Select `Browse Serverless app repository`
4. Then search for `alexa-skills-kit-color-expert-python` and select
5. Scroll down, enter a topic such as `color` and then deploy
6. Click on the deployment and refresh until status is completed
7. Once deployed, click on Services and select Lambda
8. Then click on the function and choose the test tab
9. For template, click on the arrow and choose `Amazon Alexa Intent MyColorIs`
10. The for name, type `TestColor` and change the color to `Black` and then hit Test
11. You can now view the executed function log
12. Click on the monitor tab to view the Cloudwatch metrics
13. Also have the option to Add metric to dashboard
    - Create New
    - Provide a name to view dashboard

14. While in dashboard view, click on Alarms on the left side
    - Create alarms
    - Select Metrics
    - Select Lambda and by function name
    - Select Error metric 
    - Change statistic to Sum
    - Change period to 1 min
    - Threshold greater than 3
    - For notifications, create new topic and provide email address for notification
    - Provide name for alert

15. Once the alarm is created, an email will be sent to confirm the subscription
16. Now trigger some alarms on the function
    - Click on the Lambda function
    - For template, click on the arrow and choose `Amazon Alexa Intent MyColorIs`
    - The for name, type `TestColor` and change the color to `Black` and then hit Test 
    - Change the Intent Name to `MybadError`
    - Then click on the test tab and click test.  You should notice error in the log.
    - In the Cloudwatch alarms section, you should notice alarm and you should also receive an email notification

    