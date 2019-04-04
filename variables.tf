variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "name" {
  type        = "string"
  description = "Name of the IAM user"
}

variable "path" {
  type        = "string"
  description = "Path in which to create the user"
  default     = "/"
}

variable "permissions_boundary" {
  type        = "string"
  description = "The ARN of the policy that is used to set the permissions boundary for the user"
  default     = ""
}

variable "force_destroy" {
  type        = "string"
  description = "Use this to be able to also delete IAM users that were not created with Terraform and have IAM access keys, MFA devices, etc."
  default     = "false"
}

variable "tags" {
  type        = "map"
  description = "Map holding the resource tags in a key-value format"
}

variable "pgp_key" {
  type        = "string"
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists"
  default     = ""
}
