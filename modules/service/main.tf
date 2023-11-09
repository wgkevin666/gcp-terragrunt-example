locals {
  services = toset(var.services)
}

resource "google_project_service" "service" {
  count   = length(local.services)
  service = locals.services[count.index]
}