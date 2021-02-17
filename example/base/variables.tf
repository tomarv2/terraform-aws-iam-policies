# Additional documentation: https://www.terraform.io/docs/configuration/variables.html
variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "profile_to_use" {
  description = "Getting values from ~/.aws/credentials"
}

variable "name" {
  description = "The name of the policy"
  type        = string
  default     = null
}

variable "path" {
  description = "The path of the policy in IAM"
  type        = string
  default     = "/"
}

variable "description" {
  description = "The description of the policy"
  type        = string
  default     = "IAM Managed Policy"
}

variable "policy_file" {
  description = "The path of the policy in IAM (tpl file)"
  type        = string
  default     = ""
}

variable "role_name" {
  default     = ""
}

variable "inline_policy" {
  default     = false
}