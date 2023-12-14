#!/bin/bash

set -eou pipefail

for username in $(tr ":" "\n" < /tmp/suporte/novosusuarios)
do
  sre_username="sre_$username" 
  echo "Create user $sre_username"
  useradd -m -s /bin/bash "$sre_username"
  echo "$sre_username  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
done

# one line way: 
# $ awk 'BEGIN { RS = ":" }{ print "sre_" $0 }' /tmp/suporte/novosusuarios | xargs -I {} sudo useradd -s /bin/bash -m -G users,sudo -U {}`
#
