# Ansible

Ansible roles to setup some common tools I use at home.

## Supported Systems

Currently only expected to work with Ubuntu.

### Future

Depending on the role, I expect to build out support for the following operating systems.

- MacOS
- Fedora

## Usage

To run locally on a system run the following.

```commandline
ansible-playbook --connection=local playbook.yaml -v --ask-become-pass
```

## Adding a new role

Use built in ansible-galaxy tool to create a new role.
