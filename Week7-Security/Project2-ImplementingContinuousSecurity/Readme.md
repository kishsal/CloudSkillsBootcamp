# Implementing Continuous Security

1. Fork https://github.com/CloudSkills/tf-sec-ops
2. Click on Action in your repo
3. Set up a workflow yourself
    - Rename main.yml to ci.yml
    - Update trigger to the following to allow trigger any branch with word feature
    ```yaml
    #Triggers the workflow on push or pull request events but only for the main branch
    push:
     branches: 
        - 'feature/*'
    ```
    - Remove the following lines
    ```yaml
          # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
    ```
    - Search Marketplace for Checkov
    - Choose v12
    - Copy code and paste to ci.yml
    ```yaml
    - name: Checkov Github Action
        # You may pin to the exact commit or the version.
        # uses: bridgecrewio/checkov-action@b320ff7a5ec447855b8bf90dd7891b4b222339cc
        uses: bridgecrewio/checkov-action@v12
    ```

    - Start Commit and commit change
    - Go to Actions and you should see CI workflow
    - Trigger workflow manually by select `Run Workflow`

    - In the build, you can view the Chechov scan and see no issues
<br>
4. Clone Repo `git clone https://github.com/kizzle911/tf-sec-ops.git`
5. Change to directory
6. Create new branch `git checkout -b "feature/newtffeature"`
7. Modify main.tf by changing the following:
```tf
source_address_prefix      = "*"
```
8. Save file, commit and push
9. In the workflow, you will notice the CI failed with the following error:
```
CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
```
10. Go back to the file and revert the code changes
```tf
source_address_prefix      = "10.0.0.0/16"
```
11. Save file, commit and push
12. You will notice that the build completed with no security issues