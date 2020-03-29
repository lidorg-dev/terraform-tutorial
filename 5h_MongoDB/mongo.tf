provider "helm" {}

resource "helm_release" "mongo" {
  name  = "mongo"
  chart = "stable/mongodb-replicaset"

  set {
    name  = "auth.adminUser"
    value = "lidor"
  }

  set {
    name  = "auth.adminPassword"
    value = "a1a1a1"
  }
}
