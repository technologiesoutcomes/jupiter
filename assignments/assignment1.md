
1) What do you understand by API (Application Programming Interface) in the context of AWS cloud?

2) Why might you want to run the "terraform apply" command with the auto-approve option?

3) AWS offers two areas in which you could create resources - public and private. Where are the following resources provisioned?
a) S3 bucket
b) EC2 instance
c) VPC

4) Terraform is directory-centric. What do you understand by this?

5) A Terraform List data structure is defined as follows: ```cars = [2, 4, 6, 9, 12].```
What is the element on index position 0?
What is the element on index position 4?

6) Read this Terraform interpolation document  - https://www.koding.com/docs/terraform/configuration/interpolation.html/

7)  Describe as best you can what this code does?
```
terraform {
  backend "s3" {
    bucket  = "technologiesoutcomes-terraform-backend"
    encrypt = true
    key     = "3tier-baseinfra.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-terraform-backend"
  }
}


data "terraform_remote_state" "remote" {
  backend = "s3"
  config =  {
    bucket = "technologiesoutcomes-terraform-backend"
    key = "3tier-baseinfra.tfstate"
    region = "eu-west-1"
  }
}

resource "aws_network_interface" "bar" {
  subnet_id       = "${data.terraform_remote_state.remote.outputs.public_subnets[0]}"
  security_groups = [aws_security_group.ec2_web.id]

  tags = {
    Name = "primary_network_interface"
  }
}
```
8) What is a Terraform provider?


9) What happens what you run "terraform init"?


10) Explain why it is a best practice to have your Terraform state in a centralised secure location.


