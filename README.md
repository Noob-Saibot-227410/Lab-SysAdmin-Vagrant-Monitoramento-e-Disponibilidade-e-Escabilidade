<h1 align="center">Projeto SysAdmin</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Vagrant-2.2.14-blue" />
  <img src="https://img.shields.io/badge/Prometheus-2.22.2-blue" />
</p>

## Sobre o projeto

Este projeto tem como objetivo demonstrar como criar um ambiente virtualizado utilizando o Vagrant e instalar o sistema de monitoramento Prometheus. O Prometheus é uma ferramenta open source de monitoramento e alerta de sistemas que ajuda a detectar problemas de forma proativa antes que eles se tornem críticos.

## Tecnologias utilizadas

- [Vagrant](https://www.vagrantup.com/)
- [Prometheus](https://prometheus.io/)

## Requisitos

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- Conhecimento básico de linha de comando

## Instalação

1. Faça o clone deste projeto: `git clone https://github.com/Noob-Saibot-227410/Lab-SysAdmin-Vagrant-Monitoramento-e-Disponibilidade-e-Escabilidade.git`
2. Acesse a pasta do projeto: `cd projeto-sysadmin`
3. Execute o comando `vagrant up` para criar e iniciar a máquina virtual
4. Acesse o Prometheus no seu navegador em `http://localhost:9090`

## Configuração

A configuração do Prometheus é feita através do arquivo `prometheus.yml`, que está localizado na pasta `config/`. Neste arquivo é possível definir quais endpoints serão monitorados e quais alertas devem ser configurados.

### Exemplo de configuração

global:
scrape_interval: 15s

scrape_configs:

job_name: 'node_exporter'
static_configs:
targets: ['localhost:9100']


## Utilização

Após seguir os passos de instalação, você terá uma máquina virtual com o Prometheus instalado e configurado. Para acessar o Prometheus, basta acessar `http://localhost:9090` no seu navegador.

### Monitorando outros endpoints

Para monitorar outros endpoints, basta adicionar novas seções de configuração ao arquivo `prometheus.yml`, com os endpoints e alertas desejados.

### Desligar a máquina virtual

Para desligar a máquina virtual, execute o comando `vagrant halt` na pasta do projeto. Para excluí-la completamente, execute o comando `vagrant destroy`.

## Autor

Noob-Saibot-227410

## Licença

Este projeto está licenciado sob a licença MIT - consulte o arquivo [LICENSE](LICENSE) para obter detalhes.

