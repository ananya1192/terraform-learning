variable "region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "server_names" {
  type    = list(string)
  default = ["web", "app", "db"]
}