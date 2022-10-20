output "inline_policy_name" {
  description = "The name of the inline policy"
  value       = module.iam_policy.inline_policy_name
}

output "inline_policy_role" {
  description = "The role name to which inline policy is attached"
  value       = module.iam_policy.inline_policy_role
}

output "managed_policy_arn" {
  description = "The ARN of the managed policy"
  value       = module.iam_policy.managed_policy_arn
}

output "managed_policy_description" {
  description = "The description of the managed policy"
  value       = module.iam_policy.managed_policy_description
}

output "managed_policy_name" {
  description = "The name of the managed policy"
  value       = module.iam_policy.managed_policy_name
}

