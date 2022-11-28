resource "kubernetes_manifest" "bucket" {
  manifest = {
    "apiVersion" = "objectbucket.io/v1alpha1"
    "kind"       = "ObjectBucketClaim"
    "metadata" = {
      "name"      = var.name
      "namespace" = var.namespace
    }
    "spec" = {
      "generateBucketName" = var.name
      "storageClassName"   = var.storageClass
    }
  }
}

data "kubernetes_config_map" "configmap" {
  depends_on = [kubernetes_manifest.bucket]
  metadata {
    name      = var.name
    namespace = var.namespace
  }
}

data "kubernetes_secret" "secret" {
  depends_on = [kubernetes_manifest.bucket]
  metadata {
    name      = var.name
    namespace = var.namespace
  }
}