#!/bin/bash
#@brief  自动化安装node-exporter脚本
#@author lewis
#@version 1.0
#@since 2023/12/28
#
mkdir ~/node_exporter
wget -P ~/node_exporter  https://github.com/prometheus/node_exporter/releases/download/v0.16.0/node_exporter-0.16.0.linux-amd64.tar.gz
cd ~/node_exporter
tar xzf node_exporter-0.16.0.linux-amd64.tar.gz -C /usr/local/
ln -s /usr/local/node_exporter-0.16.0.linux-amd64/node_exporter /usr/bin/node_exporter
cat > /lib/systemd/system/node_exporter.service <<EOF
[Unit]
Description=node_exporter
Documentation=https://prometheus.io/
After=network-online.target
[Service]
Type=simple
User=root
Group=root
ExecStart=/usr/bin/node_exporter
Restart=on-failure
[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable node_exporter
systemctl restart node_exporter