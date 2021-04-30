module "inline_policy" {
  source = "../../"

  name      = "demo-lambda-policy"
  role_name = "demo-role"
  #policy    = file("sample-policy.json")
  policy        = <<EOF
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
  inline_policy = true
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
