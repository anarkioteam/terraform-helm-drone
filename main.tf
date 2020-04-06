resource "helm_release" "drone" {
  name       = "drone"
  repository = data.helm_repository.drone.metadata[0].name
  chart      = "drone"
  namespace  = "drone"

  values = [data.template_file.values_file.rendered]

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
