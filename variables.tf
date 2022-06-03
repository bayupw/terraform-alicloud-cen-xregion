variable "description" {
  description = "Description of the CEN instance"
  type        = string
  default     = "CEN instance"
}

variable "name" {
  description = "Name of CEN instance"
  type        = string
  default     = "cen"
}

variable "cen_attachments" {
  description = "Maps of maps of VPC details to attach to CEN"
  type        = any
  default     = {}
}