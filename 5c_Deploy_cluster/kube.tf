module "kubernetes" {
  source = "./kubernetes"
  region = "us-central1"

  project_id_map = {
    default = "norse-antenna-244412"
  }
}

output "connection-command" {
  value = "${module.kubernetes.connect-string}"
}
