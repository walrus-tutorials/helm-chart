resource "helm_release" "service" {
  namespace = var.walrus_metadata_namespace_name
  name      = var.walrus_metadata_service_name
  wait      = false

  repository = var.chart_repository
  chart = local.chart
  version = var.chart_version

  values = [
    yamlencode(var.values),
  ]
}

locals {
  chart     = coalesce(var.chart_url, var.chart_name)
}
