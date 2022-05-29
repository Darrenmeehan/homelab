packer {
  required_plugins {
    proxmox = {
      version = ">= 1.0.7"
      source  = "github.com/hashicorp/proxmox"
    }
  }
}

source "proxmox" "test_template" {
 boot_command = [
  " <wait>",
  " <wait>",
  " <wait>",
  " <wait>",
  " <wait>",
  "c",
  "<wait>",
  "set gfxpayload=keep",
  "<enter><wait>",
  "linux /casper/vmlinuz quiet<wait>",
  " autoinstall<wait>",
  " ds=nocloud-net<wait>",
  "\\;s=http://<wait>",
  "{{.HTTPIP}}<wait>",
  ":{{.HTTPPort}}/<wait>",
  " ---",
  "<enter><wait>",
  "initrd /casper/initrd<wait>",
  "<enter><wait>",
  "boot<enter><wait>"
]
  boot_wait    = "10s"
  cores        = "2"
  disks {
    cache_mode        = "writeback"
    disk_size         = "${var.disk_size}"
    format            = "raw"
    storage_pool      = "local-lvm"
    storage_pool_type = "lvm-thin"
    type              = "scsi"
  }
  http_directory           = "./http"
  insecure_skip_tls_verify = true
  iso_file                 = "${var.iso_file}"
  memory                   = "${var.memory}"
  network_adapters {
    bridge = "vmbr0"
    model  = "virtio"
  }
  node                 = "${var.proxmox_node}"
  os                   = "l26"
  proxmox_url          = "${var.proxmox_url}"
  qemu_agent           = true
  cloud_init           = true
  cloud_init_storage_pool = "local-lvm"
  sockets              = "${var.sockets}"
  ssh_password         = "${var.ssh_password}"
  ssh_timeout          = "90m"
  ssh_username         = "${var.ssh_username}"
  template_description = "${var.template_description}"
  unmount_iso          = true
  username             = "${var.username}"
  token                = "${var.token}"
  vm_id                = "${var.vm_id}"
  vm_name              = "${var.template_name}-${var.vm_id}"
}
# a build block invokes sources and runs provisioning steps on them. The
# documentation for build blocks can be found here:
# https://www.packer.io/docs/templates/hcl_templates/blocks/build
build {
  sources = ["source.proxmox.test_template"]
  provisioner "ansible" {
    playbook_file = "./playbook.yml"
    extra_arguments = [
      "--extra-vars",
      "ansible_become_pass=vagrant hostname=base-image"
      ]
  }
}
