# Fedora Setup

This is one flavour of guest VM running on the homelab.

## SSH

https://docs.fedoraproject.org/en-US/fedora/f33/system-administrators-guide/infrastructure-services/OpenSSH/

https://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication


Despite having uploaded by public key, I'm still prompted for password.

I would like to disable password login
And root login


## podman

```commandline
dnf install podman podman-compose
```

Unfortunetly the `podman-compose` tool has an issue reading certain config in from YAML...

It is addressed in this PR https://github.com/containers/podman-compose/pull/200 Which has yet to be merged..

```commandline
Writing manifest to image destination
Storing signatures
Error: invalid --security-opt 1: "seccomp:unconfined"
125
podman start photoprism_mariadb_1
Error: no container with name or ID photoprism_mariadb_1 found: no such container
125
```

```commandline
mkdir ~/.local/bin
curl -o ~/.local/bin/podman-compose  https://raw.githubusercontent.com/markstos/podman-compose/seccomp/podman_compose.py
chmod +x ~/.local/bin/podman-compose
podman-compose --help
```

After moving to this version, another issue was hit... Will return to this saga again..


### Rust

Installed `rustup` using `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain stable -y`

More notes at https://rust-lang.github.io/rustup/installation/index.html

#### zero2rust

I cloned my repo which was already available online at

Though I needed to install `sqlx`.

```
cargo install --locked --version=0.5.1 sqlx-cli --no-default-features --features postgres
```

Which needed `openssl-devel` installed.

```commandline
sudo dnf install openssl-devel
```

I still couldn't build it..

# 
