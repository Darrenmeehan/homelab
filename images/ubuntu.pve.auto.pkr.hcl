variable "locale" {
  type    = string
  default = "en_US"
}

variable "hostname" {
  type    = string
}

variable "ssh_username" {
  type    = string
}

variable "username" {
  type    = string
}

variable "ssh_password" {
  type    = string
}

variable "cores" {
  type    = number
  default = 1
}

variable "disk_size" {
  type    = string
  default = "10G"
}

variable "iso_file" {
  type    = string
  default = "local:iso/ubuntu-22.04-live-server-amd64.iso"
}

variable "memory" {
  type    = number
  default = 2048
}

variable "sockets" {
  type = number
  default = 1
}

variable "proxmox_node" {
  type = string
  default = "pve"
}

variable "token" {
  type = string
}

variable "proxmox_url" {
  type = string
}

variable "template_description" {
  type = string
  default = "Packer created template"
}

variable "template_name" {
  type = string
  default = "ubuntu"
}
variable "vm_id" {
  type = number
  default = 800
}
