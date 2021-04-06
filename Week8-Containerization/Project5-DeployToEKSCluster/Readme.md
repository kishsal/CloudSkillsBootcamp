# Deploying to EKS

1. In AWS console, open the cloudshell
2. Install Kubectl by entering:
    ```
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    ```
3. Modify binary permissions
    ```
    chmod +x ./kubectl
    ```
4. Create a new directory, copy kubectl to new directory and export path
    ```
    mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
    ```
5. Verify kubectl is install correctly
    ```
    kubectl version
    ```
6. Authenticate to our EKS cluster
    ```
    aws eks update-kubeconfig --name cloudskillsks
    ```
7. Run the following command:
    ```
    kubectl get pods
    ```
    There should be no resource since there are no pods created

8. Paste the following text:
    ```
    cat <<EOF> nginx-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
EOF
    ```

9. To deploy the manifest, enter the following:
    ```
    kubectl create -f nginx-deployment.yaml
    ```
10. Check deployments:
    ```
    kubectl get deployments
    ```