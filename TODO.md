# TODO

[] Octoprint
[] Home Assistant
[] pi-hole
[] Paperless-NG
[] Photoprisim
[] Nextcloud
[] Gitlab CI
[] Recursive DNS server
[] Kanban board
[] archivebox
[] Prometheus
[] Wireguard
[] Matrix
[] RSS Reader
[] Squid cache
[] local DNS server
    - Need to look into options
    https://www.redhat.com/sysadmin/bound-dns

- Setup Caddy
    syncthing.net
    https://github.com/scubajeff/lespas
- Caddyserver reverse proxy
    - SSO

- Email server


## Terraform

[] Add VM IP addresses to TF output
[] Add VM MAC addresses to TF output
[] Document usage of TF
[] Cleanup VM ID generation
[] Force TF to use local execution.

- How to bootstrap new sever
    - On F34 had to install git & ansible
    - and vim
    - Change from running locally to running from a central location.
- Use Ansible Vault for secrets
- Clean up roles, removing defaulted files
- Fedora support
- Lint
- Add precommit hooks

- Add cron to snapshot machine, and run Ansible at night.
    - Need notification on status..

Add custom DNS to pihole for all services behind caddy
https://blog.mdoff.net/2019/how-add-custom-dns-entries-in-pi-hole/

## Tools to setup



https://github.com/spantaleev/matrix-docker-ansible-deploy


https://github.com/openwrt/packages/tree/openwrt-19.07/utils/prometheus
ansible-galaxy install geerlingguy.postgresql cloundalchemy.node_exporter
