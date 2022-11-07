variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "rh-lab.labs"
}

variable instance_name {
  type        = map
  description = "Instances name for the lab"
  default     = {
    "controller" = "controller-lab"
    "hub" = "hub-lab"
    "sso" = "sso-lab"
    "idm" = "idm-lab"
    "satellite" = "satellite-lab"
    "rhel" = "rhel-lab"
  }
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

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 30
}

variable network_cidr {
  type        = list
  description = "Network CIDR for libvirt network definition"
  default     = ["192.168.230.0/24"]
}

variable libvirt_pool_path {
  type        = string
  description = "Path for libvirt pool definition"
  default     = "/var/lib/libvirt/images"
}

variable aap2_controller_setup {
  type        = string
  description = "Flag to enable AAP2 Setup"
  default     = false
}

variable aap2_hub_setup {
  type        = string
  description = "Flag to enable AAP2 Setup"
  default     = false
}

variable sso_setup {
  type        = string
  description = "Flag to enable SSO setup"
  default     = false
}

variable satellite_setup {
  type        = string
  description = "Flag to enable Satellite setup"
  default     = false
}

variable idm_setup {
  type        = string
  description = "Flag to enable IDM Setup"
  default     = false
}

variable rhel_setup {
  type        = string
  description = "Flag to enable RHEL instance deployment"
  default     = false
}


