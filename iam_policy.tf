locals {
  policy_name = var.name != null ? var.name : "${var.teamid}-${var.prjid}"
}

resource "aws_iam_policy" "managed_policy" {
  count = var.deploy_iam_policy && var.inline_policy == false ? 1 : 0

  name        = local.policy_name
  description = var.description == null ? "Terraform managed: ${var.teamid}-${var.prjid}" : var.description
  path        = var.path
  # NOTE: policy can be json data or file
  policy = var.policy
}

resource "aws_iam_role_policy" "inline_policy" {
  count = var.deploy_iam_policy && var.inline_policy == true ? 1 : 0

  name = local.policy_name
  role = var.role_name
  # NOTE: policy can be json data or file
  policy = var.policy
}
