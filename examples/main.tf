terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 4.35"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "iam_policy" {
  source = "../"

  managed_policy_config = {
    "varun_test_tf" = {
      policy = <<-EOF
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
    }
  }
  inline_policy_config = {
    "varun_test_tf" = {
      name   = "demo-lambda-policy"
      role   = "codebuild-demo-ecs"
      policy = file("sample-policy.json")
    }
  }
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
