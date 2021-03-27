# Securing Code

1. Fork https://github.com/CloudSkills/ci-pythonapp
2. Click on Security and Code scanning alerts
3. Select `CodeQL Analysis` and set up workflow
    - Start Commit
    - Go to Action to view workflow
<br>
4. Once completed, click on Security to view Code Scanning Alerts
    - You can click on each alerts to view details
    - Show more shows recommendation
<br>
5. Copy GIT URL of code and git clone repo (https://github.com/kizzle911/ci-pythonapp.git)
6. Expand file and open `Cloudskills/ci-pythonapp/Application/python_webapp_flask/templates/index.html`
7. Update Index.html and save
8. Cd to ci-pythonapp
9. `git status` to view updated file
10. `git checkout -b "feature/newwebpage"` to create a new branch
11. `git add Application/python_webapp_flask/templates/index.html` to add the file to commit
12. `git commit -a -m "new web page"` to commit message
13. `git push --set-upstream origin feature/newwebpage` to push branch to remote
14. You will notice a Pull request in GitHub
    - Create pull request
    - Change base repo to your repo
    - You will notice the PR getting kicked off and CodeQL scan
    - Once completed, review Checks tab to see status and then merge PR
