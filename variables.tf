variable "aws_region" {
  description = "AWS region to deploy the bucket"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type        = string
  default     = "default"
}

variable "bucket_name" {
  description = "Unique name for the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
}
