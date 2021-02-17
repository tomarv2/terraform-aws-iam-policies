# https://github.com/terraform-aws-modules/terraform-aws-iam/blob/master/modules/iam-assumable-roles/main.tf

module "iam_policy" {
  source = "../.."

  name                    = var.name
  teamid                  = var.teamid
  prjid                   = var.prjid
  profile_to_use          = var.profile_to_use

  policy_file             = file(var.policy_file)
  description             = var.description
  role_name               = var.role_name
  path                    = "/"
  inline_policy           = var.inline_policy
}