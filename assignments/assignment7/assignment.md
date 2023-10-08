
### 1. Docker manual image builds

Clone this repository onto your local machine
```
git clone https://github.com/dockersamples/buildme.git
```
Then read and following the instructions on the website and build as many of the images defined in the Dockerfile as possible.
Check your local machine for the images you have built
Create a DockerHub account and push some of your images to your account.

### 2. Github Actions - Build and Push docker images

Using the content of this site https://docs.docker.com/build/ci/github-actions/ create a workflow that builds and push images to
1) DockerHub account
2) AWS ECR

### 3. Deployment to Kubernetes using a manifest

Research how you would deploy one of the images onto a Kubernetes cluster using
1) declarative approach
2) Imperative approach

