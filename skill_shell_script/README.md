# Criar contas SRE

O script `criarcontas.sh`, criara novos usuários com prefixo `sre_` a partir do arquivo `/tmp/suporte/novosusuarios` separados por dois pontos, ex: 


``` bash
#/tmp/suporte/novosusuarios
foo:bar
```

ao executar o script:

``` bash
bash criarcontas.sh
```

> Sugestão: Adicionar um timer no systemd para executar diariamente, ou no crontab.

Resultará na criação dos respectivos usuários: sre_foo e sre_bar

# Filtra os usuários SRE
Ao executar o script `usuarios_sre.sh`, ira listar todos os usuarios com prefico `sre_`

``` bash
bash usuarios_sre.sh
sre_foo:x:1002:1002::/home/sre_foo:/bin/bash
sre_bar:x:1003:1003::/home/sre_bar:/bin/bash
```

# Filtragem de linhas alfabéticas e com espaços no manual

Imprime as linhas que contém caracteres alfabético e com espaço branco, para executar:

``` bash
bash doc_filter_alpha_space.sh 
```


