docker pull localstack/localstack:latest
wget https://github.com/localstack/localstack-cli/releases/download/v2.2.0/localstack-cli-2.2.0-linux-amd64-onefile.tar.gz
sudo tar xvzf localstack-cli-2.2.0-linux-amd64-onefile.tar.gz -C /usr/local/bin
rm localstack-cli-2.2.0-linux-amd64-onefile.tar.gz
pip3 install awscli
pip3 install awscli-local[ver1]
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
