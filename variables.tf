variable "student_id" {
  description = "Student ID prefix for bucket names"
  type        = string
}


variable "aws_access_key_id" {
  type      = string
  sensitive = true
}

variable "aws_secret_access_key" {
  type      = string
  sensitive = true
}

variable "aws_session_token" {
  type      = string
  sensitive = true
}


variable "aws_region" {
  default = "us-east-1"
}


variable "aws_profile" {
  description = "AWS CLI profile to use"
  default     = "default"
}


variable "bucket_count" {
  description = "How many buckets to create"
  default     = 4
}