data "helm_repository" "drone" {
  name = "drone"
  url  = "https://charts.drone.io"
}

data "template_file" "values_file" {
  template = "${path.module}/templates/values.yaml.tpl"

  vars = {
    drone_server_host  = var.drone_server_host
    drone_server_proto = var.drone_server_proto
    drone_rpc_secret   = var.drone_rpc_secret
    drone_user_create  = var.drone_user_create
    drone_user_filter  = var.drone_user_filter

    drone_github_client_id     = var.drone_github_client_id
    drone_github_client_secret = var.drone_github_client_secret

    drone_ingress_enabled         = var.drone_ingress_enabled
    drone_ingress_class           = var.drone_ingress_class
    drone_ingress_tls_secret_name = var.drone_ingress_tls_secret_name
  }
}
