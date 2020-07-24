variable "alias_name" {
  description = "The name of the key alias"
  type        = "string"
}

variable "description" {
  description = "The description of this KMS key"
  type        = "string"
}

variable "environment" {
  description = "The environment this KMS key belongs to"
  type        = "string"
}

variable "key_policy" {
  description = "The policy of the key usage"
  type        = "string"
  default     = ""
}

variable "key_policy_path" { }
