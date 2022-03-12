## Description

Outline ansible playbook allows you to fast install new [Outline VPN](https://getoutline.org/en-GB/).

[Outline Server](https://github.com/Jigsaw-Code/outline-server)

## Requirements
To use this playbook you should install [Ansible v5+](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) on your localhost.

Install dependencies:
```bash
$ ansible-galaxy collection install community.docker
```

## Prepare
1. Generate new ssh key for your server

```bash
$ ssh-keygen -t rsa -b 2048 -C "outline"
```

2. Copy generated ssh key to your server
```bash
$ ssh-copy-id -h username@host -i ~/.ssh/id_rsa
```

Or simply past `id_rsa.pub` content to `~/.ssh/authorized_keys`

3. On localhost past to your ~/.ssh/config
```
Host SERVER_IP_ADDRESS
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_rsa
```

4. Create new inventory file in `inventory`. You can look to `inventory/example.inventory.yaml`.

5. Run `ping.sh` script to ensure that Ansible can connect to your server.

## Usage

Your Outline host OS must be `CentOS7`.

```bash
$ ansible-playbook install-vpn.playbook.yaml
```

You can limit installation for single server or server group like this:

```bash
$ ansible-playbook install-vpn.playbook.yaml --limit=myhost
```

JSON output for Outline Manager saves to `configs` folder.

## Utils

`ping.sh` - tries to ping all your servers.

## Known issues

### Disabling firewalld
Right now I disable firewalld forever because outline install script breaks it. Working on it.

## Support

BTC bc1qsqr26mu57stt9m4rwe0wvawsquw8v0cmscj9xd  
ETH 0xd3aE7C72592FE9113C85e9846b87af3c8a8460fA  
