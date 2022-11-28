output "AWS_ACCESS_KEY_ID" {
  depends_on = [data.kubernetes_secret.secret]
  value      = data.kubernetes_secret.secret.data.AWS_ACCESS_KEY_ID
}

output "AWS_SECRET_ACCESS_KEY" {
  depends_on = [data.kubernetes_secret.secret]
  value      = data.kubernetes_secret.secret.data.AWS_SECRET_ACCESS_KEY
}

output "BUCKET_HOST" {
  depends_on = [data.kubernetes_config_map.configmap]
  value      = data.kubernetes_config_map.configmap.data.BUCKET_HOST
}

output "BUCKET_REGION" {
  depends_on = [data.kubernetes_config_map.configmap]
  value      = data.kubernetes_config_map.configmap.data.BUCKET_REGION
}