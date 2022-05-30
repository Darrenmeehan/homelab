# Images

Builds VM templates for Proxmox, using Packer.

## Usage

From within this directory, run the following.

```shell
PACKER_LOG=1 packer build .
```

## TODO

- [] Remove hardcoded ID
- [] Document setup
- [] Add pipeline
- [] Improve documentation
- [] Better figure out out CloudInit and autoinstall
- [] Use Image in Terraform
- [] Use Ansible provisioner for use-case specific images.

## References

- https://pve.proxmox.com/wiki/Qemu-guest-agent
- https://cloudinit.readthedocs.io/en/latest/topics/examples.html#yaml-examples
- https://help.ubuntu.com/community/CloudInit
- https://github.com/chef/bento/tree/main/packer_templates/ubuntu
- https://github.com/alvistack/vagrant-ubuntu
