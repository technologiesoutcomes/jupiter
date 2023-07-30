##
## Logon onto your AWS account and create a bucket matching the name given in the backend below
## Make sure you substitute the <??????> with a name that makes your bucket name unique
##
terraform {
  backend "s3" {
    bucket  = "technologiesoutcomes-<??????>-terraform-backend"
    encrypt = true
    key     = "network/baseinfra.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-terraform-backend"
  }
}
