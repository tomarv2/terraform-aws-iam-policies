output "managed_policy_id" {
  description = "The policy's ID"
  value       = module.iam_policy.*.managed_policy_id
}

output "managed_policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.iam_policy.*.managed_policy_arn
}

output "managed_policy_description" {
  description = "The description of the policy"
  value       = module.iam_policy.*.managed_policy_description
}

output "managed_policy_name" {
  description = "The name of the managed policy"
  value       = module.iam_policy.*.managed_policy_name
}

output "managed_policy_path" {
  description = "The path of the policy in IAM"
  value       = module.iam_policy.*.managed_policy_path
}

output "managed_policy" {
  description = "The managed policy document"
  value       = module.iam_policy.*.managed_policy
}

output "inline_policy_name" {
  description = "The name of the inline policy"
  value       = module.iam_policy.*.inline_policy_name
}

output "inline_policy" {
  description = "The inline policy document"
  value       = module.iam_policy.*.inline_policy
}

output "inline_policy_id" {
  description = "The policy's ID"
  value       = module.iam_policy.*.inline_policy_id
}

output "inline_policy_role" {
  description = "The role name to which this policy is attached"
  value       = module.iam_policy.*.inline_policy_role
}