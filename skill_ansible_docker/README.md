# Desafio

Para facilitar, utilizei o Vagrant para provisionar uma maquina Ubuntu(22.04-Jammy), no qual executar o Ansible para configurar o ambiente com docker/compose.

## Comencando
Iniciar a maquina virtual com Vagrant

```bash
vagrant up
```

Configura a maquina virtual com Ansible utilizando o arquivo playbook.yml:

```bash
ansible-playbook playbook.yml 
```

ou usando o alvo configure-server:

```bash
make configure-server
```

Inicia o servicos docker-compose

```bash
ansible-playbook deploy.yml 
```

ou usando o alvo deploy-prod:

```bash
make deploy-prod
```

## Configurando e iniando os servicos:

```bash
make setup
```

