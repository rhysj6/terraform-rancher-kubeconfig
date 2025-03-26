output "cluster_exists" {
  value = data.rancher2_cluster_v2.cluster.id != null
}

output "host" {
    value = local.kubeconfig != null ? local.kubeconfig.clusters[0].cluster.server : null
}

output "token" {
    value = local.kubeconfig != null ? local.kubeconfig.users[0].user.token : null
}