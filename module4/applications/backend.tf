##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    key            = "application.state"
    region         = "eu-west-2"
    profile        = "sallysue"
    dynamodb_table = "ddt-tfstatelock"
  }
}
