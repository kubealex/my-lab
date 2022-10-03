variable hostname {
  type        = string
  description = "Hostname of the VM"
  default     = "rhel-server"
}

variable instance_name {
  type        = string
  description = "Instance name of the VM"
  default     = "rhel-server"
}

variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "rhel.labs"
}

variable memory {
  type        = number
  description = "Amount of memory in GBs for the VM"
  default     = 16
}

variable cpu {
  type        = number
  description = "Amount of CPUs for the VM"
  default     = 8
}

variable kickstart_image_rhel {
  type        = string
  description = "Path for the kickstart image for RHEL"
  default     = "rhel-oemdrv.img"
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "rhel-net"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "rhel-pool"
}

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 30
}

variable os_image_rhel {
  type        = string
  description = "URL/path of the image to be used for the VM provisioning"
  default     = "rhel.iso"
}
