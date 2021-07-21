Docker Ansible Role
=========

Install and setup Docker.

Based off instructions at https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

--metrics-addr 127.0.0.1:9323

https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-metrics
https://github.com/prometheus/prometheus/wiki/Default-port-allocations

# Dozzle

docker run --detach --volume=/var/run/docker.sock:/var/run/docker.sock -p 8080:8080 amir20/dozzle --no-analytics

https://github.com/amir20/dozzle

https://dozzle.dev/

Requirements
------------

Currently only works for Ubuntu.

```shell
ansible-galaxy collection install community.docker
```

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

Author Information
------------------

Darren Meehan
