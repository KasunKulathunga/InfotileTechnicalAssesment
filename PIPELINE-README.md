# DatennaTechincalAssesment
Datenna - Technical Assessment


Choose a CI/CD tool that you prefer (e.g., GitHub Actions, GitLab CI/CD, Jenkins) and create a CI/CD pipeline configuration file.

Configure the pipeline to do the following:

- Build the Docker image from your application code.
- Tag the image with the appropriate repository and version.
- Push the image to your Docker Hub repository.
- Deploy the Helm chart to your Kubernetes cluster.
- 
Set up secrets in your CI/CD tool to securely store Docker Hub credentials (DOCKER_USERNAME and DOCKER_PASSWORD) and Kubernetes configuration (Kubeconfig) for deploying to your cluster.

Configure the CI/CD tool to trigger the pipeline on each push to the main branch.

After the CI/CD pipeline is set up and configured, each push to the main branch will trigger the pipeline.
The pipeline will build and push the Docker image, and then deploy the Helm chart to your Kubernetes cluster.
