terraform {
  required_version = ">= 1.14.0"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "kubectl" {
  host                   = var.eks_cluster_endpoint
  load_config_file       = true
  config_path            = "$HOME/.kube/config"
}