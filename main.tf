resource "helm_release" "drone" {
  name       = "drone"
  repository = data.helm_repository.drone.metadata[0].name
  chart      = "drone"
  namespace  = "drone"

  values = [data.template_file.values_file.rendered]
}
