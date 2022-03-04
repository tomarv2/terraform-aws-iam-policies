output "inline_policy_name" {
  description = "The name of the inline policy"
  value       = module.inline_policy.*.inline_policy_name
}

output "inline_policy" {
  description = "The inline policy document"
  value       = module.inline_policy.*.inline_policy
}

output "inline_policy_id" {
  description = "The policy's ID"
  value       = module.inline_policy.*.inline_policy_id
}

output "inline_policy_role" {
  description = "The role name to which this policy is attached"
  value       = module.inline_policy.*.inline_policy_role
}
