# homelab

Software to setup my homelab.

## Usage

Some tools are required to bootstrap use of this Ansible playbook.

```shell
pip install ansible-core
pip install ansible
```

It's worth looking at the following repository which sets up the machine used to run the tools in this setup. https://github.com/Darrenmeehan/mac-dev-playbook

1. Setup Proxmox. (Only tested with 7.2)
1. `cd images`. Follow `images/README.md` to create base image.
1. `terraform apply` - Note this will create virtual machines in Proxmox specific to my needs.
1. `ansible-playbook main.yml --limit k0s --ask-become-pass`

ansible-playbook main.yml --limit k0s --ask-become-pas


## Proxmox

## Inspiration

Projects that I plan to reference again in future for snippets of gold!

https://github.com/spantaleev/matrix-docker-ansible-deploy


## Adding a new VM

1. Create the VM in Proxmox UI
1. Install OS to VM using Console
1. Use `ssh-copy-id` to upload SSH key(s)
1. Add IP Address to `inventory.ini` file


## References

- https://github.com/Telmate/terraform-provider-proxmox/blob/master/docs/guides/cloud_init.md
