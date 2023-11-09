variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "services" {
  description = "The list of services to enable"
  type        = list(string)
}