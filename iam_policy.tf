locals{
  policy_name = var.name != null ? var.name : "${var.teamid}-${var.prjid}"
}

resource "aws_iam_policy" "managed_policy" {
  count           = var.inline_policy == false ? 1 : 0
  name            = local.policy_name
  path            = var.path
  description     = var.description

  policy          = var.policy_file
}

resource "aws_iam_role_policy" "inline_policy" {
  count           = var.inline_policy == true ? 1 : 0
  name            = local.policy_name
  role            = var.role_name

  policy          = var.policy_file
}