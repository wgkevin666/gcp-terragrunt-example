variable "services" {
  description = "The list of services to enable"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}