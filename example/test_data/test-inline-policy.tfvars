# NOTE: due to limited IAM permissions, using 2 different roles:
# 1. create IAM role/policy
# 2. push state to S3
#
profile_to_use              = "iam-admin"
#
# NOTE: file path relative to the base directory
#
policy_file                 = "../test_data/test-policy.json"
inline_policy               = true
#-------------------------------------------------------------------
# Note: Do not change teamid and prjid once set.
teamid                      = "rumse"
prjid                       = "demo-inline-policy-test"
