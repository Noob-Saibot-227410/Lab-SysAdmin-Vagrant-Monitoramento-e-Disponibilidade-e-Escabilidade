#!/bin/bash

# Faz o download da última versão do Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.22.2/prometheus-2.22.2.linux-amd64.tar.gz

# Extrai o arquivo
tar xzf prometheus-2.22.2.linux-amd64.tar.gz

# Acessa o diretório do Prometheus
cd prometheus-2.22.2.linux-amd64/

# Cria o arquivo de serviço do Prometheus como um daemon
cat > /etc/systemd/system/prometheus.service <<EOF
[Unit]
Description=Prometheus
After=network.target

[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/local/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/var/lib/prometheus/data \
  --web.console.templates=/usr/local/bin/consoles \
  --web.console.libraries=/usr/local/bin/console_libraries

[Install]
WantedBy=multi-user.target
EOF

# Cria o diretório de configuração do Prometheus
mkdir -p /etc/prometheus

# Copia o arquivo de configuração do Prometheus para o diretório
cp prometheus.yml /etc/prometheus/prometheus.yml

# Cria o diretório para armazenar os dados do Prometheus
mkdir -p /var/lib/prometheus/data

# Cria um usuário prometheus para executar o serviço
useradd -rs /bin/false prometheus

# Define as permissões necessárias para o diretório de dados e o arquivo de configuração
chown -R prometheus:prometheus /var/lib/prometheus
chown -R prometheus:prometheus /etc/prometheus