### Project 7 – Building containerised applications and Deployment on AWS EKS
You are recruited as a DevOps engineer to join a team delivering containerised application on the AWS EKS service. The company has never used EKS for application deployment but has recruited you to guide them through the process of adopting AWS EKS. Your organisation is also new to automated CICD methods and have chosen GitHub Actions as their CICD tool and Terraform as their Infrastructure-as-code tool. You will play the role of a DevOps Platform Engineer and an DevOps Application Engineer.
For the organisation's leadership and tech teams to gain confidence in the technology choices, they have decided to proceed in the following manner.

1.	<b>Phase One</b>: Design and implement a simple Proof-of-Concept (POC) that showcases the features and capabilities of GitHub Actions as a CICD tool for deploying containerised applications to AWS EKS. Use an image from a public image registry such as the games-2048 image and deploy it and exposed it to the outside world.

2.	Phase Two: Having gained some understanding from the POC, design and implement a CICD pipeline that will automate the deployment of the team's java application onto the AWS EKS cluster, across three environments (Dev, UAT and Prod). There are multiple teams using the EKS cluster. In keeping with the principle of separation of responsibility it is important that each team's resources are only available to members of the team.

3.	Phase three: The organisation is very quality and security conscious and would like these capabilities to be built into the delivery pipeline for testing and security scanning. Research what tools you could use and how you would integrate them into the pipeline.

4.	Phase four: The Chief Security Officer, upon reviewing the design has requested that all interactions with the EKS control plane should NOT traverse the public internet. What steps would you take to implement this? See https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html

5.	Phase five: The organisation is interested in operationalising a GitOps process for the Kubernetes cluster. Discuss what GitOps means, what tools could be used to implement a GitOps system and how you would go about it.

6.	Phase six: There is a requirement to run a periodic job on the cluster that will retrieve data from an on-premise database and process and save it onto an RDS instance. The job will be scheduled to run every Saturday at 1:00AM. Design the workflow.

7.	Phase seven: The team is keen to use semantic versioning to manage their release and would like you to help them with setting it up. Research Semantic Versioning and describe how you would implement it.





