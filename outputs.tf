output "cluster_exists" {
  value = data.rancher2_cluster_v2.cluster.id != null
  description = "Whether the cluster has been found"
}

output "host" {
    value = local.kubeconfig != null ? local.kubeconfig.clusters[0].cluster.server : null
    description = "The host of the downstream cluster, which is the Rancher server URL. This will be null if the cluster is not ready."
}

output "token" {
    value = local.kubeconfig != null ? local.kubeconfig.users[0].user.token : null
    description = "The token of the downstream cluster, which is used to authenticate with the Rancher server. This will be null if the cluster is not ready."
}