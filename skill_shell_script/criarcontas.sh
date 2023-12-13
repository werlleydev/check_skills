#!/bin/bash

set -eou pipefail

for username in $(cat novosusuarios | tr ":" "\n")
do
  sre_username="sre_$username" 
  echo "Create user $sre_username"
  useradd -m -s /bin/bash $sre_username
  echo "$sre_username  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
done

