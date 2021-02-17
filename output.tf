output "managed_policy_id" {
  description = "The policy's ID"
  value       = aws_iam_policy.managed_policy.*.id
}

output "managed_policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = aws_iam_policy.managed_policy.*.arn
}

output "managed_policy_description" {
  description = "The description of the policy"
  value       = aws_iam_policy.managed_policy.*.description
}

output "managed_policy_name" {
  description = "The name of the managed policy"
  value       = aws_iam_policy.managed_policy.*.name
}

output "managed_policy_path" {
  description = "The path of the policy in IAM"
  value       = aws_iam_policy.managed_policy.*.path
}

output "managed_policy" {
  description = "The managed policy document"
  value       = aws_iam_policy.managed_policy.*.policy
}

output "inline_policy_name" {
  description = "The name of the inline policy"
  value       = aws_iam_role_policy.inline_policy.*.name
}

output "inline_policy" {
  description = "The inline policy document"
  value       = aws_iam_role_policy.inline_policy.*.policy
}

output "inline_policy_id" {
  description = "The policy's ID"
  value       = aws_iam_role_policy.inline_policy.*.id
}

output "inline_policy_role" {
  description = "The role name to which this policy is attached"
  value       = aws_iam_role_policy.inline_policy.*.role
}