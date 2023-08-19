1) The AWS Access key and Secret Access Key are used to log onto the AWS Console
* True
* False

2) AWS IAM service is a global resource
True
False

3) You have created an EC2 instance in a VPC in a public subnet. Which of the following is required to SSH to the instance from outside
the VPC/Subnet. Select all relevant answers.
a) Public IP address
b) Private IP address
c) NAT server
d) A load balancer
e) A security group configured to allow traffic on port 22

4) You have created an EC2 instance in a VPC in a private subnet. You want the instance to be able to connect to the internet to download 
software updates. Which of the following must you configure to enable that?
a) Create a NAT gateway in the private subnet and configure it to point to the internet.
b) Create a NAT gateway in the public subnet and ensure it has an Elastic IP
c) Create a load balancer in the public subnet and point a NAT gateway to the Load balancer
d) Create an Elastic IP address and point it to the internet. Attach the Elastic IP to the instance.
e) Create an Internet gateway and attach it to a NAT gateway.

5) You are provisioning an EC2 instance and want to also install and configure an application during the provisioning of the instance.
Which of these approaches could you use to accomplish this task?
a) Write a bash script and specify it as part of the user data of the instance.
b) Write a Terraform script and specify it as part of the user data of the instance
c) Write a cloud-init directive and specify it as part of the user data of the instance
d) Write an instance metadata script and specify it as part of the instance metadata of the instance

6) The EC2 service always creates an Instance Metadata Service for every instance as part of EC2 instance provisioning.
True
False

7) Which of the following statements are true?
a) EC2 Instance Connect can connect to instance only with private IP address
b) Using EC2 Instance Connect offers a method of connection which means one does not have to manage keys. The keys are managed by the service.
c) When one creates an Ec2 Instance, the private keys are created and uploaded onto the instance metadata service
d) When one creates an Ec2 Instance, the public keys are created and uploaded onto the instance metadata service
e) AWS secret key and secret access key can be used to log onto EC2 instances.

8) Which of these services could be used to build hybrid connectivity between an on-premise data centre and an AWS cloud network?
a) Direct Connect
b) VPN
c) Load balancer
d) Modem
e) Internet gateway

9) A Security Group is associated with Elastic Network Interface.
True
False

10) Which of these statements are true about the AWSCLI? Select two.
a) It is a piece of software which when configured correctly can be used to interact with the AWS API.
b) It is a piece of software that required the Terraform provider to function correctly
c) It is a piece of software that is responsible only for authenticating with the AWS API.
d) It is a piece of software that enables applications running on your AWS account to communicate with your local machine
e) AWS access key and secret access key are required to configure the AWSCLI

11) Terraform can best be described as a declarative provisioning tool.
True
False

12) Which of the following is true when you run the "terraform init" command?
a) It creates the declared infrastructure in the target environment
b) It resolves dependencies by downloading modules and providers and sets up the backend for the storage of the state
c) It allows Terraform to validate the declared scripts
d) It connects to the target infrastructure and downloads the provider
e) It downloads Terraform and installs in on the local machine

13) Which of these statements best describes the role of a Terraform provider?
a) It installs Terraform on the target infrastructure
b) It is responsible for installing Terraform on the local machine
c) It enables connectivity to the API of the target infrastructure
d) It enables connectivity to the CICD system
e) It is not required for a proper Terraform configuration

14) What is responsible for creating and actively managing the Terraform state?
a) The Terraform software
b) The DevOps engineer
c) A Terraform module
d) The Terraform backend bucket
e) The target deployment infrastructure

15) Which of these is not a file that Terraform would recognise?
a) main.tf
b) terraform.tfvars
c) variables.tf
d) outputs.tf
e) backend.state

16) What is the recommended approach to editing a Terraform state file
a) Use vim to edit the state file
b) Use Visual Studio Code to edit the state file
c) Use nano to edit the state file
d) Use the command "terraform edit" to edit the state file
e) The state file should not be manually edited.

17) In which Terraform resource are credentials for connecting to a target system configured?
a) The credential resource
b) The provider resource
c) A data resource
d) A provisioner resource
e) The Terraform state

18) In a typical infrastructure provisioning pipeline Terraform is best positioned as;
a) A configuration management tool
b) An Infrastructure as Code tool
c) A security scanning tool
d) A CICD orchestration tool
e) An application build tool

19) Which of the following are true about Terraform?
a) In order to provision on a target environment a Terraform agent must be installed on the target environment.
b) One can use publicly available providers to connect to a target system for which that provider has been implemented
c) Terraform uses an imperative style of provisioning which necessitate explicit definition of how the resources are to be provisioned.
d) Terraform provisioning mechanism consists of reconciling the declared state and the desired state.
e) Terraform can operate perfectly well without a state 

20) What is the recommended approach of changing an AWS resource that was created and managed by Terraform?
a) Through the terraform file that owns the resource
b) Through another Infrastructure as Code tool
c) Through the AWS console and importing the new configuration into Terraform state
d) Through the "terraform state change" command
e) Through the Terraform console interface


Hands-on exercises
------------------
21) Hands-on exercise

Go to your technologiesoutcomes directory.
Create a directory called quiz1
Go into the quiz1 directory
Initialise the directory as a git directory
create a file called quizzes

Got to your GitHub account and create a repository called quiz1 (Do not select the option to create a Readme file)
Copy the output of the creation and save somewhere

Go back to your local machine and run the git commands you need to run to push your local repository to the GitHub repository

Initialise the directory as a Terraform directory.

Create a file called nullresource.tf

Open the file nullresource.tf in an editor (vim) and copy and paste the following code in the nullresource.tf file and save and exit the file.

#########################################################
resource "null_resource" "cowsay" {
 provisioner "local-exec" {
 command = "cowsay Hello Outcomer. Good Luck on the Quiz!"
 }
 provisioner "local-exec" {
 when = destroy
 command = "cowsay -d Goodbye Outcomer. Sure you enjoyed the challenge and you did well :) !"
 }
}
#########################################################

Install the cowsay command using the command below.

sudo apt install cowsay

The run the terraform commands to provision the resource defined in the terraform file.

Push your code into your repository in GitHub.
