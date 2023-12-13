#!/bin/bash

set -eou pipefail

#
# Imprime o usuario com prefixo sre_ no login
#

awk '/^sre_/ { print $1}' < /etc/passwd 
