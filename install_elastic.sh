apt install apt-transport-https sudo wget curl gnupg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/elasticsearch.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main"| \ tee -a /etc/apt/sources.list.d/elastic-7.x.list > /dev/null
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | \ gpg --dearmor | tee /etc/apt/trusted.gpg.d/elasticsearch.gpg> /dev/null
apt update
apt install elasticsearch
/usr/share/elasticsearch/bin/elasticsearch-plugin install ingest-attachment
systemctl start elasticsearch
systemctl enable elasticsearch
