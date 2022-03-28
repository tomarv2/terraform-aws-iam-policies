<p align="center">
    <a href="https://github.com/tomarv2/terraform-aws-iam-policies/actions/workflows/pre-commit.yml" alt="Pre Commit">
        <img src="https://github.com/tomarv2/terraform-aws-iam-policies/actions/workflows/pre-commit.yml/badge.svg?branch=main" /></a>
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-aws-iam-policies" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-iam-policies/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-iam-policies" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-iam-policies/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-aws-iam-policies" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

## Terraform module for AWS IAM policies

### Versions

- Module tested for Terraform 1.0.1.
- AWS provider version [3.74](https://registry.terraform.io/providers/hashicorp/aws/latest).
- `main` branch: Provider versions not pinned to keep up with Terraform releases.
- `tags` releases: Tags are pinned with versions (use <a href="https://github.com/tomarv2/terraform-aws-iam-policies/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-iam-policies" /></a> in your releases).

---
### Usage

#### Option 1:

```
terrafrom init
terraform plan -var='teamid=tryme' -var='prjid=project1'
terraform apply -var='teamid=tryme' -var='prjid=project1'
terraform destroy -var='teamid=tryme' -var='prjid=project1'
```
**Note:** With this option please take care of remote state storage

#### Option 2:

#### Recommended method (store remote state in S3 using prjid and teamid to create directory structure):

- Create python 3.6+ virtual environment
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote --upgrade
```

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_BUCKET_REGION=us-west-2
export TF_AWS_PROFILE=<profile from ~/.ws/credentials>
```

or

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_BUCKET_REGION=us-west-2
export AWS_ACCESS_KEY_ID=<aws_access_key_id>
export AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>
```

- Updated `examples` directory with required values.

- Run and verify the output before deploying:
```
tf -c=aws plan -var='teamid=foo' -var='prjid=bar'
```

- Run below to deploy:
```
tf -c=aws apply -var='teamid=foo' -var='prjid=bar'
```

- Run below to destroy:
```
tf -c=aws destroy -var='teamid=foo' -var='prjid=bar'
```

**Note:** Read more on [tfremote](https://github.com/tomarv2/tfremote)
Please refer to examples directory [link](examples) for references.

#### Attach Inline IAM policy to an existing role

```
module "inline_policy" {
 source = "git::git@github.com:tomarv2/terraform-aws-iam-policies.git"

  name           = "demo-lambda-policy"
  role_name      = "demo-role"
  policy_file    = file("sample-policy.json")
  inline_policy  = true
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
```

#### Create IAM managed policy

```
module "managed_policy" {
 source = "git::git@github.com:tomarv2/terraform-aws-iam-policies.git"

  name           = "demo-lambda-policy"
  policy_file    = file("sample-policy.json")
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.74 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.74 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.managed_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy.inline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deploy_iam_policy"></a> [deploy\_iam\_policy](#input\_deploy\_iam\_policy) | feature flag to deploy this resource or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the policy | `string` | `null` | no |
| <a name="input_inline_policy"></a> [inline\_policy](#input\_inline\_policy) | Is it an Inline Policy | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the policy in IAM | `string` | `"/"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy json or file | `string` | `null` | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Existing iam role name | `string` | `null` | no |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inline_policy"></a> [inline\_policy](#output\_inline\_policy) | The inline policy document |
| <a name="output_inline_policy_id"></a> [inline\_policy\_id](#output\_inline\_policy\_id) | The policy's ID |
| <a name="output_inline_policy_name"></a> [inline\_policy\_name](#output\_inline\_policy\_name) | The name of the inline policy |
| <a name="output_inline_policy_role"></a> [inline\_policy\_role](#output\_inline\_policy\_role) | The role name to which this policy is attached |
| <a name="output_managed_policy"></a> [managed\_policy](#output\_managed\_policy) | The managed policy document |
| <a name="output_managed_policy_arn"></a> [managed\_policy\_arn](#output\_managed\_policy\_arn) | The ARN assigned by AWS to this policy |
| <a name="output_managed_policy_description"></a> [managed\_policy\_description](#output\_managed\_policy\_description) | The description of the policy |
| <a name="output_managed_policy_id"></a> [managed\_policy\_id](#output\_managed\_policy\_id) | The policy's ID |
| <a name="output_managed_policy_name"></a> [managed\_policy\_name](#output\_managed\_policy\_name) | The name of the managed policy |
| <a name="output_managed_policy_path"></a> [managed\_policy\_path](#output\_managed\_policy\_path) | The path of the policy in IAM |
<!-- END_TF_DOCS -->
