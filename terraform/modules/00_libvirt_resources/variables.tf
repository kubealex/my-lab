variable "domain" { 
  type = string
  default = "rhlab.labs" 
}

variable "network_cidr" {
  type = list
  default = ["192.168.230.0/24"]
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "rh-lab"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "rh-lab"
}

variable "libvirt_pool_path" { 
  type = string
  default = "/var/lib/libvirt/images" 
}
