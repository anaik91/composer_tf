
variable "access_token" {
  sensitive = true
}

variable "project_id" {

}


provider "google" {
  user_project_override = true
  access_token          = var.access_token
  project               = var.project_id
}

resource "google_composer_environment" "test" {
    project =  var.project_id
  name   = "example-composer-env"
  region = "us-central1"
  config {
    node_count = 4
  }
}

