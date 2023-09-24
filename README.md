# DatennaTechincalAssesment
Datenna - Technical Assessment


Run the helm char in the Kubernetes run the below command

helm install datenna--app-release ./my-flask-app-0.1.0.tgz



1. Create a Helm Chart Directory

helm create my-flask-app
cd my-flask-app


2. Define Helm Chart Templates

Inside the chart directory, you'll find a templates directory where you define the Kubernetes resource templates. You can create a Deployment and a Service resource for your Flask application.

3.  Configure Helm Chart Values

Create a values.yaml file in the chart directory to define configuration values for your application. You can specify values such as the image repository, tag, and replica count

4. Customize Chart Configuration
   
Modify the Chart.yaml file, values.yaml, and other templates in the chart directory as needed to customize the chart according to your application's requirements.

5. Package the Helm chart 

Package your Helm chart into a tarball
helm package .

This creates a .tgz file in the current directory containing your Helm chart.
(Push this to the artifactory repository)

6. Install the Helm Chart

To install the Helm chart in a Kubernetes cluster, use the helm install command, providing a release name (e.g., my-flask-app-release) and the path to the chart package:

helm install my-flask-app-release ./my-flask-app-0.1.0.tgz

This will deploy the Flask application to the cluster according to the configuration defined in the Helm chart templates.

Check the below commands to check the running services
kubectl get pods
kubectl get services
