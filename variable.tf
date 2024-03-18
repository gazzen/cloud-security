# Defining variables
variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "Assume role policy document"
  type        = string
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
}

variable "policy_document" {
  description = "Policy document"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

variable "detach_policy" {
  description = "Whether to detach the policy from the role"
  type        = bool
  default     = false
}

variable "remove_policy" {
  description = "Whether to remove the policy"
  type        = bool
  default     = false
}
