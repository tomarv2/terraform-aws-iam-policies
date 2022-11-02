resource "aws_iam_policy" "managed_policy" {
  for_each = var.managed_policy_config != null ? var.managed_policy_config : {}

  name        = each.key
  description = try(each.key.description, "Terraform managed: ${var.teamid}-${var.prjid}")
  path        = try(each.key.path, "/")
  # NOTE: policy can be json data or file
  policy = each.value.policy
  tags   = merge(local.shared_tags, var.extra_tags)
}

resource "aws_iam_role_policy" "inline_policy" {
  for_each = var.inline_policy_config != null ? var.inline_policy_config : {}

  name = each.key
  role = each.value.role
  # NOTE: policy can be json data or file
  policy = each.value.policy
}
