data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket
    key    = "${var.remote_state_prefix}/20-vpc/terragrunt.tfstate"
    region = var.remote_state_bucket_region
  }
}

data "terraform_remote_state" "sg" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket
    key    = "${var.remote_state_prefix}/40-sg/terragrunt.tfstate"
    region = var.remote_state_bucket_region
  }
}

data "terraform_remote_state" "route53" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket
    key    = "${var.remote_state_prefix}/50-route53/terragrunt.tfstate"
    region = var.remote_state_bucket_region
  }
}

data "terraform_remote_state" "ec2_bastion" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket
    key    = "${var.remote_state_prefix}/60-ec2/010-bastion/terragrunt.tfstate"
    region = var.remote_state_bucket_region
  }
}

data "terraform_remote_state" "public_nginx" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket
    key    = "${var.remote_state_prefix}/60-ec2/020-public-nginx/terragrunt.tfstate"
    region = var.remote_state_bucket_region
  }
}