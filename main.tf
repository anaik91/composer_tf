
variable "access_token" {
  sensitive = true
}

variable "project_id" {

}


resource "google_composer_environment" "test" {
    project =  var.project_id
  name   = "example-composer-env"
  region = "us-central1"
}

