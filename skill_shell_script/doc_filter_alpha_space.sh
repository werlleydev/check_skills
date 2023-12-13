#!/bin/bash

set -eou pipefail

#
# Imprime somente as linhas com caracteres alfabeticos e espacos em branco do documento
# OBS: Espaco em branco, foi utilizado a classe regex do awk (considerando espaço, tabulação e formfeed)
#

awk '/^[[:alpha:][:space:]]*$/' < /usr/share/doc/gc/README.darwin 
