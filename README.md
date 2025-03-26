# Rancher managed cluster kubeconfig
Terraform module that gets the kubernetes and helm provider config for managed clusters

# Usage
```terraform
module "production_cluster" {
  source       = "rhysj6/kubeconfig/rancher"
  version      = "1.0.0"
  cluster_name = "test"
}

provider "kubernetes" {
  host  = module.production_cluster.host
  token = module.production_cluster.token
}
provider "helm" {
  kubernetes {
    host  = module.production_cluster.host
    token = module.production_cluster.token
  }
}
```