#!/bin/bash -e

ver=focal

if (($# < 1)); then
    echo "Usage: $0 container-name [ubuntu-version]"
    echo "          ubuntu-version defaults to $ver."
    exit 1
fi

name=$1
[[ -n $2 ]] && ver=$2

lxc launch ubuntu:$ver $name

lxc exec $name -- apt update
lxc exec $name -- apt upgrade -y
lxc exec $name -- apt autoremove -y
