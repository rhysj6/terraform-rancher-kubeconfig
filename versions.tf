terraform {
  required_version = ">= 1.11.1"
  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = "~> 7.3.2"
    }
  }
}
