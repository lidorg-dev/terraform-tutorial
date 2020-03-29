provider "google" {
  project = "${var.project_id_map[terraform.workspace]}"
  region  = "${var.region}"
  version = "~>3.0.0"
}
