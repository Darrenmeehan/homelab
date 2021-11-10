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

Use `ansible-galaxy` tool to create a new role.
This tool comes with `ansible` - FIXME which pip package does it come with?

```commandline
cd src/ansible/roles
ansible-galaxy role init <role_name>
```

There will likely be a lot of files that are not required, be sure to delete those that are not changed.
