resource "google_project_service" "service" {
  # project = local.project_id
  count   = length(var.services)
  service = var.services[count.index]
  disable_dependent_services = false
  disable_on_destroy         = true
}