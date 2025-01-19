#!/bin/bash

apt update


wget https://github.com/prometheus/alertmanager/releases/download/v0.28.0/alertmanager-0.28.0.linux-amd64.tar.gz
tar xvf alertmanager-0.28.0.linux-amd64.tar.gz
rm alertmanager-0.28.0.linux-amd64.tar.gz

mkdir /etc/alertmanager /var/lib/prometheus/alertmanager
cd alertmanager-0.28.0.linux-amd64


cp alertmanager amtool /usr/local/bin/ && cp alertmanager.yml /etc/alertmanager

useradd --no-create-home --shell /bin/false alertmanager

chown -R alertmanager:alertmanager /etc/alertmanager /var/lib/prometheus/alertmanager
chown alertmanager:alertmanager /usr/local/bin/{alertmanager,amtool}

