terraform {
  backend "gcs" {}
}

provider "google" {
  project     = var.project_id
  region      = "us-west1"
  zone        = "us-west1-a"
}

module "services" {
  source = "./services"
  services = var.services
}