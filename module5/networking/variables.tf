##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "projectcode" {
  default = "8675309"
}

variable "url" {}

variable "application_lead" {
  default = "Venkat Purushotham"
}

variable "asg_instance_size" {
  default = "t2.micro"
}

variable "asg_max_size" {
  default = 5
}

variable "asg_min_size" {
  default = 2
}

variable "billing_code" {
  default = 342647563
}

variable "environment" {
  default = "development"
}

variable "network_lead" {
  default = "Jyothi Kovuru"
}

variable "project_code" {
  default = 8675309
}

variable "ProjectEnvironment" {
  default = "development-8675309"
}

variable "rds_db_name" {
  default = "wordpress"
}

variable "rds_engine" {
  default = "mysql"
}

variable "rds_instance_size" {
  default = "db.t2.micro"
}

variable "rds_multi_az" {
  default = "false"
}

variable "rds_storage_size" {
  default = "5"
}

variable "rds_version" {
  default = "5.6.37"
}

variable "vpc_cidr_range" {
  default = "10.0.0.0/16"
}

variable "vpc_subnet_count" {
  default = 2
}
