variable "managed_policy_config" {
  description = "Managed policies configuration"
  type        = map(any)
  default     = {}
}

variable "inline_policy_config" {
  description = "Inline policies configuration"
  type        = map(any)
  default     = {}
}

variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}
