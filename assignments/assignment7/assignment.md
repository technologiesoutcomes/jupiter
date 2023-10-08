### 1. Basic commands

Run the following commands and observe and discuss what it does.
```
sudo docker pull rabbitmq:latest

sudo docker pull mysql:latest

sudo docker image prune -a

sudo docker inspect <image ID>
```

Run the command to see where images are store locally;
```
sudo ls -ltr /var/lib/docker/overlay2
```


### 2. Docker manual image builds

Clone this repository onto your local machine
```
git clone https://github.com/dockersamples/buildme.git
```
Then read and following the instructions on the website and build as many of the images defined in the Dockerfile as possible.
Check your local machine for the images you have built
Create a DockerHub account and push some of your images to your account.

### 3. Github Actions - Build and Push docker images

Using the content of this site https://docs.docker.com/build/ci/github-actions/ create a workflow that builds and push images to
1) DockerHub account
2) AWS ECR

### 4. Deployment to Kubernetes using a manifest

Research how you would deploy one of the images onto a Kubernetes cluster using
1) declarative approach
2) Imperative approach

