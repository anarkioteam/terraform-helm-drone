resource "helm_release" "drone" {
  name       = "drone"
  repository = data.helm_repository.drone.metadata[0].name
  chart      = "drone"
  namespace  = "drone"

  values = [
    templatefile(
      "${path.module}/templates/values.yaml.tpl",
      {
        "drone_server_host"  = var.drone_server_host
        "drone_server_proto" = var.drone_server_proto
        "drone_user_create"  = var.drone_user_create
        "drone_user_filter"  = var.drone_user_filter

        "drone_ingress_enabled"          = var.drone_ingress_enabled
        "drone_ingress_tls_acme_enabled" = var.drone_ingress_tls_acme_enabled
        "drone_ingress_class"            = var.drone_ingress_class
        "drone_ingress_tls_secret_name"  = var.drone_ingress_tls_secret_name
      }
    )
  ]

  set_sensitive {
    name  = "env.DRONE_RPC_SECRET"
    value = var.drone_rpc_secret
  }

  set_sensitive {
    name  = "env.DRONE_GITHUB_CLIENT_ID"
    value = var.drone_github_client_id
  }

  set_sensitive {
    name  = "env.DRONE_GITHUB_CLIENT_SECRET"
    value = var.drone_github_client_secret
  }
}
