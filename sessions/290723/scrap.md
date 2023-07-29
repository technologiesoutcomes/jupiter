WSL2
git
awscli
Terraform
VS code

GitHub
AWS account

awscli configure
----------------
keys ( key, secrets)
region


Terraform
---------
1) Key ( key, secrets)
2) region


```
terraform {
  backend "s3" {
    bucket         = "technologiesoutcomes-terraform-backend"
    encrypt        = true
    key            = "exercise2/cht2-simple-terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "technologiesoutcomes-3tier-terraform-backend"
  }
}
```
Locking mechanism

Terraform locking of state

Terraform authenticates (keys)
Terraform providers
Terraform state - management thereof 
Terraform initialisation
Terraform plan
Terraform apply
Terraform destroy

Declared state (code) ====> |||| Terraform Engine ||||| =====> Desired state

Declared state = Desired state


