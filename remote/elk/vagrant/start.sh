#!/usr/bin/env bash

vagrant landrush stop
vagrant destroy -f

vagrant up

ping -c 1 es1.vagrant.local ; exit $?
