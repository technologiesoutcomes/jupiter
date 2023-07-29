


# main.tf
```
provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "demos3" {
  bucket = "my1stbtfbucket?????????????????"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}
```
# backend.tf
```
terraform {
  backend "s3" {
    bucket         = "technologiesoutcomes-??????????????????/-terraform-backend"
    encrypt        = true
    key            = "exercise2/cht2-simple-terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "technologiesoutcomes-???????????????????-terraform-backend"
  }
}
```
# Terraform commands
```
terraform init
terraform plan
terraform apply
terraform destroy
```


Terraform authenticates (keys)
Terraform providers
Terraform state - management thereof 
Terraform initialisation
Terraform plan
Terraform apply
Terraform destroy
Locking mechanism

Terraform locking of state
Declared state (code) ====> |||| Terraform Engine ||||| =====> Desired state

Declared state = Desired state


