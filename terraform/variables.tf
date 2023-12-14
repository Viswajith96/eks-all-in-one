variable "cluster_name" {
  type = string
  default = "worklyfe-dev"
}

variable "cluster_version" {
  type = number
  default = 1.28
}

variable "region" {
  type = string
  default = "us-west-2"
}

variable "availability_zones" {
  type = list
  default = ["us-west-2a", "us-west-2b"]
}



variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))

  default = [
    {
      name    = "kube-proxy"
      version = "v1.28.1-eksbuild.1"
    },
    {
      name    = "vpc-cni"
      version = "v1.14.1-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.10.1-eksbuild.2"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.23.0-eksbuild.1"
    }
  ]
}
