module "inline_policy" {
  source = "../../"

  name           = "demo-lambda-policy"
  profile_to_use = "iam-admin"
  role_name      = "demo-role"
  #policy_json    = file("sample-policy.json")
  policy_json = <<EOF
    {
         "Version": "2012-10-17",
         "Statement": [
             {
                 "Sid": "InvokePermission",
                 "Effect": "Allow",
                 "Action": [
                     "lambda:InvokeFunction"
                 ],
                 "Resource": "*"
             }
         ]
    }
    EOF
  inline_policy  = true
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}