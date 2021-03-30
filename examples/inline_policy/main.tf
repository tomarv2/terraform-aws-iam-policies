module "inline_policy" {
  source = "../../"

  name           = "demo-lambda-policy"
  profile_to_use = "iam-admin"
  role_name      = "demo-role"
  policy_file    = "sample-policy.json"
  inline_policy  = true
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}