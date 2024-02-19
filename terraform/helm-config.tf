provider "helm" {
  kubernetes {
    config_path = "$HOME/.kube/config"
  }


}

resource "helm_release" "kube_prometheus-stack" {
  name       = "kube_prometheus-stack"

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-community"

  set {
    name  = "service.type"
    value = "ClusterIP"
  }
}