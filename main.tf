data "rancher2_cluster_v2" "cluster" {
  name            = var.cluster_name
  fleet_namespace = var.cluster_namespace
}

## The kube_config may be null if the cluster is not ready so we need to check for that before trying to access it
locals {
  kubeconfig = try(yamldecode(data.rancher2_cluster_v2.cluster.kube_config), null)
}