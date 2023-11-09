terraform {
  source = ${get_repo_root()}/modules
}

remote_state {
  backend = "gcs"
  config = {
    project = "sandbox-terraform-404607"
    location = "us-west1"
    bucket = "snadbox-example-test-terraform-state-bucket"
    prefix = "terraform/state"
  }
}

inputs = {
  project_id = "sandbox-terraform"
  services   = ["compute.googleapis.com", 
                "logging.googleapis.com",
                "iam.googleapis.com"]
}