curl -so wazuh-agent-4.3.10.deb http://192.168.33.130:3333/wazuh-agent_4.3.10-1_amd64.deb && sudo WAZUH_MANAGER='192.168.33.130' WAZUH_AGENT_GROUP='default' dpkg -i ./wazuh-agent-4.3.10.deb

sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent
