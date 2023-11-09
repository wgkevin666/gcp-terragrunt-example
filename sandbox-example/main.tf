terraform {
  backend "gcs" {}
}

# provider "google" {
#   project     = var.project_id
#   region      = "us-west1"
#   zone        = "us-west1-a"
# }

# module "service" {
#   source = "../modules/service/"
# }