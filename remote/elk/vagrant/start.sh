#!/usr/bin/env bash
vagrant destroy -f

vagrant up

ping -c 1 es1.vagrant.local ; exit $?
