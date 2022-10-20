output "managed_policy_id" {
  description = "The Id of the managed policy"
  value       = [for policy in aws_iam_policy.managed_policy : policy.id]
}

output "managed_policy_arn" {
  description = "The ARN of the managed policy"
  value       = [for policy in aws_iam_policy.managed_policy : policy.arn]
}

output "managed_policy_description" {
  description = "The description of the managed policy"
  value       = [for policy in aws_iam_policy.managed_policy : policy.description]
}

output "managed_policy_name" {
  description = "The name of the managed policy"
  value       = [for policy in aws_iam_policy.managed_policy : policy.name]
}

output "managed_policy_path" {
  description = "The path of the managed policy in IAM"
  value       =  [for policy in aws_iam_policy.managed_policy : policy.path]
}

output "inline_policy_name" {
  description = "The name of the inline policy"
  value       = [for policy in aws_iam_role_policy.inline_policy : policy.name]
}

output "inline_policy_id" {
  description = "The Id of the inline policy"
  value       = [for policy in aws_iam_role_policy.inline_policy : policy.id]
}

output "inline_policy_role" {
  description = "The role name to which inline policy is attached"
  value       = [for policy in aws_iam_role_policy.inline_policy : policy.role]
}
