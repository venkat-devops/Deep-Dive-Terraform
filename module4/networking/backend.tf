##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    key            = "networking.state"
    region         = "eu-west-2"
    profile        = "marymoe"
    dynamodb_table = "ddt-tfstatelock"
  }
}
