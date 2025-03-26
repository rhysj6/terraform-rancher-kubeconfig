variable "cluster_name" {
  description = "The name of the downstream cluster"
  type = string
}

variable "cluster_namespace" {
  description = "The namespace of the downstream cluster resource"
  default = "fleet-default"
  type = string
}