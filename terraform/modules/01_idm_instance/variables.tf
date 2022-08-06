variable hostname {
  type        = string
  description = "Hostname of the VM"
  default     = "idm-server"
}

variable instance_name {
  type        = string
  description = "Instance name of the VM"
  default     = "idm-server"
}

variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "rh-lab.labs"
}
 
variable memory {
  type        = number
  description = "Amount of memory in GBs for the VM"
  default     = 2
}

variable cpu {
  type        = number
  description = "Amount of CPUs for the VM"
  default     = 1
}

variable kickstart_image_idm_server {
  type        = string
  description = "Path for the kickstart image for RHEL8"
  default     = "rhel-idm-oemdrv.img"
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
  default     = 20
}

variable os_image_idm_server {
  type        = string
  description = "URL/path of the image to be used for the VM provisioning"
  default     = "rhel-idm.iso"
}