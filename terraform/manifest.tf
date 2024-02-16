##############################
# In this manifest file, I imported the manifests using the data source i found from the documentation
##############################

# this data source will call the deployment.yml file then apply the content using the kubectl_manifest resource

data "kubectl_file_documents" "deployment" {
    content = file("./k8s/deployment.yaml")
}

resource "kubectl_manifest" "deployment-manifest" {
    for_each  = data.kubectl_file_documents.deployment.manifests
    yaml_body = each.value
}

# this data source will call the service.yml file then apply the content

data "kubectl_file_documents" "service" {
    content = file("./k8s/service.yaml")
}

resource "kubectl_manifest" "service-manifest" {
    for_each  = data.kubectl_file_documents.service.manifests
    yaml_body = each.value
}