
AWS  - EC2 instances (Server, Virtual Machine, Box, node) 
Understand the EC2 instance landscape, Anatomy of an instance
create instance and log onto the instance from local machine

ssh (client) ssh -i id_rsa ec2-user@54.195.126.108
sshd (server)
authorized_key
Keypairs - private key (you) and public key (goes on remote system) in the .ssh/authorized_key
Keypairs management in large fleets of servers - centralised key management system (Centrify, FreeIPA, etc)


chmod 400 id_rsa
ssh -i id_rsa ec2-user@54.195.126.108

EC2 instance - AMI (Amazon Machine Image), Instance Type, 
Public IP - Internet routable
Private IP - Internet non-routable
Elastic Network Interface (ENI)

VPC (network)

