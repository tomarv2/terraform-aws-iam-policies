provider "aws" {
  region  = "us-west-2"
  profile = "<aws profile to use>"
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
