# Container Monitoring with Prometheus and Grafana

1. In Azure portal, deploy a Kubernetes Cluster
    - Provide RG (rg-akscluster)
    - Provide cluster name
    - Chooose default version
    - Set node count to 1
    - Review/Create

2. Install Helm
    - Go to heml.sh
    - Click Getting Started
    - Click the official releases link (https://github.com/helm/helm/releases)
    - Click OS version
    - You can also run `brew install helm`
    
3. Install Azure AKS CLI
    - In terminal, run `az aks install-cli`

4. Log into Azure by entering `az login`
5. Copy the name of the AKS cluster (cloudskillsaks)
6. Go back to the terminal
    - Enter `az aks get-credentials --resource-group 'rg-akscluster' --name 'cloudskillsaks'`
    - Output:
    ```
    ksalgado@ksalgado-mn2 Project6-ContainerMonitoringPrometheus % az aks get-credentials --resource-group 'rg-akscluster' --name 'cloudskillsaks'
    The behavior of this command has been altered by the following extension: aks-preview
    Merged "cloudskillsaks" as current context in /Users/ksalgado/.kube/config
    ```

7. Enter Kubectl is installed by entering `kubectl get pods` in terminal
8. Create a namespace
    - 'kubectl create namespace monitoring`
    - Output:
    ```
    ksalgado@ksalgado-mn2 Project6-ContainerMonitoringPrometheus % kubectl create namespace monitoring
    namespace/monitoring created
    ```

9. To install Prometheus, go to `https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack`
    - Copy the get repo info
    ```
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    helm repo update
    ```
    - Paste to terminal, output: 
    ```
    ksalgado@ksalgado-mn2 Project6-ContainerMonitoringPrometheus % helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
        helm repo update
    WARNING: "kubernetes-charts.storage.googleapis.com" is deprecated for "stable" and will be deleted Nov. 13, 2020.
    WARNING: You should switch to "https://charts.helm.sh/stable" via:
    WARNING: helm repo add "stable" "https://charts.helm.sh/stable" --force-update
    "prometheus-community" has been added to your repositories
    WARNING: "kubernetes-charts.storage.googleapis.com" is deprecated for "stable" and will be deleted Nov. 13, 2020.
    WARNING: You should switch to "https://charts.helm.sh/stable" via:
    WARNING: helm repo add "stable" "https://charts.helm.sh/stable" --force-update
    Hang tight while we grab the latest from your chart repositories...
    ...Unable to get an update from the "stable" chart repository (https://kubernetes-charts.storage.googleapis.com/):
            failed to fetch https://kubernetes-charts.storage.googleapis.com/index.yaml : 403 Forbidden
    ...Successfully got an update from the "prometheus-community" chart repository
    Update Complete. ⎈Happy Helming!⎈
    ```

10. To install the chart
    - Enter `helm install prometheus --namespace monitoring prometheus-community/kube-prometheus-stack`
    - This process takes several minutes to complete

11. To verify that pods and services are running
    - Enter `kubectl get pods -n monitoring`
    ```
    ksalgado@ksalgado-mn2 Project6-ContainerMonitoringPrometheus % kubectl get pods -n monitoring
    NAME                                                     READY   STATUS    RESTARTS   AGE
    alertmanager-prometheus-kube-prometheus-alertmanager-0   2/2     Running   0          2m5s
    prometheus-grafana-5587c4cdf8-rmt5t                      2/2     Running   0          2m16s
    prometheus-kube-prometheus-operator-5c5cd5b6db-jxtkd     1/1     Running   0          2m16s
    prometheus-kube-state-metrics-6bfcd6f648-pzx4n           1/1     Running   0          2m16s
    prometheus-prometheus-kube-prometheus-prometheus-0       2/2     Running   1          2m5s
    prometheus-prometheus-node-exporter-jj2fj                1/1     Running   0          2m16s
    ```
    - Enter `kubectl get service -n monitoring`
    ```
    ksalgado@ksalgado-mn2 Project6-ContainerMonitoringPrometheus % kubectl get service -n monitoring
    NAME                                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)                      AGE
    alertmanager-operated                     ClusterIP   None           <none>        9093/TCP,9094/TCP,9094/UDP   2m16s
    prometheus-grafana                        ClusterIP   10.0.251.193   <none>        80/TCP                       2m26s
    prometheus-kube-prometheus-alertmanager   ClusterIP   10.0.50.116    <none>        9093/TCP                     2m26s
    prometheus-kube-prometheus-operator       ClusterIP   10.0.214.2     <none>        443/TCP                      2m26s
    prometheus-kube-prometheus-prometheus     ClusterIP   10.0.174.54    <none>        9090/TCP                     2m26s
    prometheus-kube-state-metrics             ClusterIP   10.0.138.211   <none>        8080/TCP                     2m26s
    prometheus-operated                       ClusterIP   None           <none>        9090/TCP                     2m15s
    prometheus-prometheus-node-exporter       ClusterIP   10.0.100.180   <none>        9100/TCP                     2m26s
    ```

12. Since there are no external IPs, we need to create a proxy
    - Enter `kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus 9090`
    - From a browser, go to `localhost:9090`
    - Enter `ctrl+c` to break the connection

13. To launch grafana:
    - Enter `kubectl port-forward -n monitoring service/prometheus-grafana 3000:80`
    - From a browser, go to `localhost:3000`
    - To login, enter default `admin` and `prom-operator`