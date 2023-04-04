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
    <a href="https://twitter.com/intent/follow?screen_name=tomar_v2" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/tomar_v2?style=social&logo=twitter"></a>
</p>

## Terraform module for AWS IAM policies

### Versions

- Module tested for Terraform 1.0.1.
- AWS provider version [4.35](https://registry.terraform.io/providers/hashicorp/aws/latest).
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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.61 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.61 |

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
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags to associate | `map(string)` | `{}` | no |
| <a name="input_inline_policy_config"></a> [inline\_policy\_config](#input\_inline\_policy\_config) | Inline policies configuration | `map(any)` | `{}` | no |
| <a name="input_managed_policy_config"></a> [managed\_policy\_config](#input\_managed\_policy\_config) | Managed policies configuration | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inline_policy_id"></a> [inline\_policy\_id](#output\_inline\_policy\_id) | The Id of the inline policy |
| <a name="output_inline_policy_name"></a> [inline\_policy\_name](#output\_inline\_policy\_name) | The name of the inline policy |
| <a name="output_inline_policy_role"></a> [inline\_policy\_role](#output\_inline\_policy\_role) | The role name to which inline policy is attached |
| <a name="output_managed_policy_arn"></a> [managed\_policy\_arn](#output\_managed\_policy\_arn) | The ARN of the managed policy |
| <a name="output_managed_policy_description"></a> [managed\_policy\_description](#output\_managed\_policy\_description) | The description of the managed policy |
| <a name="output_managed_policy_id"></a> [managed\_policy\_id](#output\_managed\_policy\_id) | The Id of the managed policy |
| <a name="output_managed_policy_name"></a> [managed\_policy\_name](#output\_managed\_policy\_name) | The name of the managed policy |
| <a name="output_managed_policy_path"></a> [managed\_policy\_path](#output\_managed\_policy\_path) | The path of the managed policy in IAM |
<!-- END_TF_DOCS -->
