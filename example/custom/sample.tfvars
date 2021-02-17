# NOTE: due to limited IAM permissions, using 2 different roles:
# 1. create IAM role/policy
# 2. push state to S3
#
profile_to_use              = "iam-admin"
#
# NOTE: file path relative to the base directory
#
policy_file                 = "../custom/managed-policies/sample-policy.json"
inline_policy               = false
name                        = "demo-lambda-policy"
#-------------------------------------------------------------------
# Note: Do not change teamid and prjid once set.
teamid                      = "rumse"
prjid                       = "demo-lambda-policy"
