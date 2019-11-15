variable "organization_name" {
  description = "Organization Name to use in labeling"
  default     = ""
}
variable "org_unit_name" {
  description = "Organization Unit Name to use with labeling"
  default     = ""
}

variable "environment_type" {
  description = "Environment type for use with labeling"
  default     = ""
}

variable "s3_bucket" {
  description = "AWS S3 bucket to send all trails"
  type        = string
  default     = ""
}