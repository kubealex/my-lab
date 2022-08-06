
terraform {
 required_version = ">= 1.0"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.14"
      configuration_aliases = [ libvirt ]
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

module "libvirt_resources" {
  source = "./modules/00_libvirt_resources"

# Variables
  domain = var.domain
  network_cidr = var.network_cidr
  libvirt_pool_path = var.libvirt_pool_path
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
}

module "idm_instance" { 
  source = "./modules/01_idm_instance"
  depends_on = [module.libvirt_resources]

# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  instance_name = var.instance_name["idm"]
}

module "controller_instance" { 
  source = "./modules/02_controller_instance"
  depends_on = [module.libvirt_resources]

# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  instance_name = var.instance_name["controller"]  
}

module "hub_instance" { 
  source = "./modules/02_hub_instance"
  depends_on = [module.libvirt_resources]
  
# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  instance_name = var.instance_name["hub"]
}

module "satellite_instance" { 
  source = "./modules/03_satellite_instance"
  depends_on = [module.libvirt_resources]

# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  instance_name = var.instance_name["satellite"]
}

module "sso_instance" { 
  source = "./modules/04_sso_instance"
  depends_on = [module.libvirt_resources]

# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  instance_name = var.instance_name["sso"]
}
