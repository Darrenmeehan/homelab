# Create Debian Buster Cloud-Init Template

```shell
# Download the cloud image
$ wget https://cloud.debian.org/images/cloud/buster/20201214-484/debian-10-generic-amd64-20201214-484.qcow2 -o debian-10-generic-amd64.qcow2

# Create a new VM with 2GB memory, using a unique id (9000)
$ qm create 9000 --name "debian-buster-ci-template" --memory 2048 --net0 virtio,bridge=vmbr0

# Import image
$ qm importdisk 9000 debian-10-generic-amd64.qcow2 local-lvm

# Attach the disk to the VM as scsi drive
$ qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-9000-disk-0

# Configure a CD-ROM for Cloud-Init data
$ qm set 9000 --ide2 local-lvm:cloudinit

# Restrict BIOS to boot from disk, set the bootdisk to scsi0
$ qm set 9000 --boot c --bootdisk scsi0

# Add a serial port and use it as the display, as required by some cloud-init images
$ qm set 9000 --serial0 socket --vga serial0

# Create a template, to allow future linked clone to be created
$ qm template 9000
```

# Create Linked Clone VM

```shell
# Create linked clone VM, using a unique id (200)
$ qm clone 9000 200 --name debian-buster-test

# Configure SSH key
$ qm set 200 --sshkey ~/.ssh/id_rsa.pub

# Configure IP address and gateway
qm set 200 --ipconfig0 ip=192.168.1.2/24,gw=192.168.1.1

# Configure DNS nameserver
qm set 200 --nameserver 192.168.1.1
```

# References

* https://cloud.debian.org/images/cloud/buster/
* https://pve.proxmox.com/wiki/Cloud-Init_Support
* https://norocketscience.at/deploy-proxmox-virtual-machines-using-cloud-init/
