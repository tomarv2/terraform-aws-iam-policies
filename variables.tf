variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "name" {
  description = "The name of the policy"
  default     = null
  type        = string
}

variable "path" {
  description = "The path of the policy in IAM"
  default     = "/"
  type        = string
}

variable "description" {
  description = "The description of the policy"
  default     = null
  type        = string
}

variable "policy" {
  description = "The policy json or file"
  default     = null
  type        = string
}

variable "inline_policy" {
  description = "Is it an Inline Policy"
  default     = false
  type        = bool
}

variable "role_name" {
  description = "Existing iam role name"
  default     = null
  type        = string
}

variable "deploy_iam_policy" {
  description = "feature flag to deploy this resource or not"
  type        = bool
  default     = true
}
