#!/usr/bin/env bash

export ANSIBLE_HOST_KEY_CHECKING=false

dir=$(pwd)
projectDir=(${dir//devops/devops })
roleDir="$projectDir/remote/roles"
inventory="$projectDir/remote/inventory.ini"

if [[ -z "$1" ]]
  then
    echo "Error: not tag specified, please specify a tag occurred in the playbook. Special tag [all] means deploy the whole ELK stack."
    exit 1
fi


if [[ "$1" = "all" ]];
  then
    echo "Deploy the whole ELK stack as no tag sp."
    echo "Use [./deploy.sh tag] to deploy tagged plays, e.g. ./deploy.sh es"
    ansible-playbook -i ${inventory} -v elk-playbook.yml --extra-vars "roleDir=$roleDir"
  else
    echo "Deploy with specified tag: [$1]"
    ansible-playbook -i ${inventory} -v elk-playbook.yml --extra-vars "roleDir=$roleDir" --tags $1
fi

