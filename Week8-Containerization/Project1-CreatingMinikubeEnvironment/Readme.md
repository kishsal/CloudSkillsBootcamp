# Creating a MiniKube environment

1. Go to `https://minikube.sigs.k8s.io/docs/start/`
2. Install for OS
3. Start Docker for Desktop
4. Now enter `minikube start`
5. Enter `kubectl get nodes`
6. Create a kubernetes manifest (Refer to `https://github.com/CloudSkills/Cloud-Native-DevOps-Bootcamp/blob/main/Week%208%20-%20Containerization%20and%20Kubernetes/nginx.yml`)
7. Then run `kubectl create -f ./nginx.yml` to deploy
    ```
    ksalgado@ksalgado-mn2 Project1-CreatingMinikubeEnvironment % kubectl create -f ./nginx.yml
    deployment.apps/nginx-deployment created
    service/nginx-service created
    ```
8. Then run `kubectl get deployment` to check deployment status
    ```
    ksalgado@ksalgado-mn2 Project1-CreatingMinikubeEnvironment % kubectl get deployment
    NAME               READY   UP-TO-DATE   AVAILABLE   AGE
    helloworld         1/1     1            1           201d
    nginx-deployment   2/2     2            2           24s
    ```
9. Then run `kubectl get pods` to check pod status
    ```
    ksalgado@ksalgado-mn2 Project1-CreatingMinikubeEnvironment % kubectl get pods
    NAME                                READY   STATUS    RESTARTS   AGE
    helloworld-66f646b9bb-gbqmr         1/1     Running   1          201d
    nginx-deployment-684c85b7f4-mtsmg   1/1     Running   0          35s
    nginx-deployment-684c85b7f4-vmpgw   1/1     Running   0          34s
    ```

