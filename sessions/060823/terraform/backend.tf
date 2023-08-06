terraform {
  backend "s3" {
    bucket  = "technologiesoutcomes-??????-terraform-backend"
    encrypt = true
    key     = "terrastruct/terrastructure-terraform.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-3tier-terraform-backend"
  }
}
