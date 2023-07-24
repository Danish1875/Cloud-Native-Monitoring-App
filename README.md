# Cloud-Native-Monitoring-App
Welcome to the Cloud Native Monitoring App! This application is built using Python and is designed to monitor your system's CPU and memory utilization. It utilizes a combination of DevOps tools such as Docker, AWS ECR (Elastic Container Registry), and Kubernetes (kubectl) to provide a seamless and scalable monitoring solution.

## Features
- Real-time CPU and Memory Utilization Monitoring
- Gauge Visualizations for CPU and Memory Metrics
- Automatic Scaling Alert for High CPU or Memory Utilization

## System Requirements
- Python 3.9 or above
- AWS CLI
- Docker Engine
- Kubernetes Cluster (kubectl configured)

# Building and Running the App
Build the Docker image: <br>
`docker build -t your-image-name .`  

Tag the image with your AWS ECR repository URI: <br>
`docker tag your-image-name:latest 568333317574.dkr.ecr.us-east-1.amazonaws.com/your-repo-name:latest`  

Push the image to your AWS ECR repository: <br>
`docker push 568333317574.dkr.ecr.us-east-1.amazonaws.com/your-repo-name:latest`  

Deploy the app to Kubernetes using the eks.py script: <br>
`python eks.py`  

Access the app:
Once the app is successfully deployed, access it by port-forwarding the service to your local machine: <br>
`kubectl port-forward svc/my-flask-service 5000:5000`  
