variable "container_name" {
  description = "The name of the Storage Container."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account where the Container should be created."
  type        = string
}

variable "container_access_type" {
  description = "The Access Level configured for this Container. Possible values are private, blob, or container."
  type        = string
  default     = "private"
}
