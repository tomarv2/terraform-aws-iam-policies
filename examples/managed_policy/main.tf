terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 3.63"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
}

module "managed_policy" {
  source = "../../"

  name   = "demo-lambda-policy"
  policy = file("sample-policy.json")
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
