##
## Log onto your AWS account and create a bucket with the name matching the name in the backend below
## Make sure to substitute the <??????> with a name that makes your bucket name unique
###
terraform {
  backend "s3" {
    bucket  = "technologiesoutcomes-<??????>-terraform-backend"
    encrypt = true
    key     = "app/ec2.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-terraform-backend"
  }
}
