#!/usr/bin/env bash

export ANSIBLE_HOST_KEY_CHECKING=false
ansible-playbook -i /Users/yteng/github/e-commerce-sample/devops/remote/inventory.ini -v elk-playbook.yml --tags es2