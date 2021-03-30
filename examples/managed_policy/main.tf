# https://github.com/terraform-aws-modules/terraform-aws-iam/blob/master/modules/iam-assumable-roles/main.tf

module "iam_policy" {
  source = "../"

  name           = "demo-lambda-policy"
  profile_to_use = "iam-admin"
  policy_file    = "../sample/test-policy.json"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}