### Hexlet tests and linter status:
[![Actions Status](https://github.com/andy-kru/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/andy-kru/devops-for-programmers-project-lvl2/actions)

### Description

Deployment of Redmine application by using Ansible playbook.

### Commands

```sh
$ make setup # prepare environment and install ansible dependencies
$ make deploy # deploy redmine
$ make encrypt-vault FILE=./group_vars/webservers/vault.yml # encrypt vault file
$ make decrypt-vault FILE=./group_vars/webservers/vault.yml # decrypt vault file
$ make view-vault FILE=./group_vars/webservers/vault.yml # view vault file
```
