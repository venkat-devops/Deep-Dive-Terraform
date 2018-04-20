locals {
  common_tags = {
    environment      = "${var.environment}"
    billing_code     = "${var.billing_code}"
    project_code     = "${var.project_code}"
    network_lead     = "${var.network_lead}"
    application_lead = "${var.application_lead}"
  }
}

data "template_file" "public_cidrsubnet" {
  count = "${var.vpc_subnet_count}"

  template = "$${cidrsubnet(vpc_cidr,8,current_count)}"

  vars {
    vpc_cidr      = "${var.vpc_cidr_range}"
    current_count = "${count.index*2+1}"
  }
}

data "template_file" "private_cidrsubnet" {
  count = "${var.vpc_subnet_count}"

  template = "$${cidrsubnet(vpc_cidr,8,current_count)}"

  vars {
    vpc_cidr      = "${var.vpc_cidr_range}"
    current_count = "${count.index*2}"
  }
}

/*
data "external" "configuration" {
  program = ["bash", "../scripts/getenvironment.sh"]

  # Optional request headers
  query = {
    workspace   = "${terraform.workspace}"
    projectcode = "${var.projectcode}"
    url         = "${var.url}"
  }
}
*/

