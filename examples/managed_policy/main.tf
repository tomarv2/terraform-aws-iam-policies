module "managed_policy" {
  source = "../../"

  name           = "demo-lambda-policy"
  profile_to_use = "iam-admin"
  policy         = file("sample-policy.json")
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
