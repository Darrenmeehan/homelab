# homelab

Software to setup my homelab.

## Usage

Some tools are required to bootstrap use of this Ansible playbook.

```shell
pip install ansible-core
pip install ansible
```

## Proxmox

## Inspiration

Projects that I plan to reference again in future for snippets of gold!

https://github.com/spantaleev/matrix-docker-ansible-deploy


## Adding a new VM

1. Create the VM in Proxmox UI
1. Install OS to VM using Console
1. Use `ssh-copy-id` to upload SSH key(s)
1. Add IP Address to `inventory.ini` file