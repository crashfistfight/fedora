#! /usr/bin/env bash

# source config
for config in "$PWD"/config/*; do
source "$config" --source-only
done



# load host config
host() {
  packages
  dnf_automatic
  kernel
  vim
  ssh
  syncthing
  snapper
}

# run config
host