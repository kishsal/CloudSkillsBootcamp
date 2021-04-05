# Deploy App to AKS cluster

1. Create a kubernetes manifest (Refer to `https://github.com/CloudSkills/Cloud-Native-DevOps-Bootcamp/blob/main/Week%208%20-%20Containerization%20and%20Kubernetes/nginx.yml`)
2. Then run `kubectl create -f ./nginx.yml` to deploy
    ```
    ksalgado@ksalgado-mn2 Project1-CreatingMinikubeEnvironment % kubectl create -f ./nginx.yml
    deployment.apps/nginx-deployment created
    service/nginx-service created
    ```
3. Then run `kubectl get deployment` to check deployment status
    ```
    ksalgado@ksalgado-mn2 Project1-CreatingMinikubeEnvironment % kubectl get deployment
    NAME               READY   UP-TO-DATE   AVAILABLE   AGE
    nginx-deployment   2/2     2            2           24s
    ```
4. Then run `kubectl get service` to view LoadBalancer URL
5. Enter the IP address into a browser