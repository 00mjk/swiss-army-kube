#Deploy environment name
variable "environment" {
  type        = string
  description = "Deploy environment name"
}

variable "cluster_name" {
  description = "Name of the kubernetes cluster"
}

variable "config_path" {
  description = "location of the kubeconfig file"
  default     = "~/.kube/config"
}

variable "domain" {
  description = "domain name for ingress"
}

variable "cluster_size" {
  type        = number
  description = "Number of desired instances."
}
