output "managed_policy_id" {
  description = "The policy's ID"
  value       = module.managed_policy.*.managed_policy_id
}

output "managed_policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.managed_policy.*.managed_policy_arn
}

output "managed_policy_description" {
  description = "The description of the policy"
  value       = module.managed_policy.*.managed_policy_description
}

output "managed_policy_name" {
  description = "The name of the managed policy"
  value       = module.managed_policy.*.managed_policy_name
}

output "managed_policy_path" {
  description = "The path of the policy in IAM"
  value       = module.managed_policy.*.managed_policy_path
}

output "managed_policy" {
  description = "The managed policy document"
  value       = module.managed_policy.*.managed_policy
}
