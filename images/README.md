# Images

Builds VM templates for Proxmox, using Packer.

## Preparation

Add API token

```shell
cp sample.secrets.pve.auto.pkvars.hcl secrets.pve.auto.pkvars.hcl
```
ansible-galaxy collection install ansible.posix

## Usage

From within this directory, run the following

```shell
packer init -upgrade .
PACKER_LOG=1 packer build .
```

## Debugging

View /var/log/pveproxy/access.log to view any issues with accessing the PVE API which is what Packer is using to build the base images.

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
