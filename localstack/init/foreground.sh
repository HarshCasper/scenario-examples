docker pull localstack/localstack:latest
wget https://github.com/localstack/localstack-cli/releases/download/v2.2.0/localstack-cli-2.2.0-linux-amd64-onefile.tar.gz
sudo tar xvzf localstack-cli-2.2.0-linux-amd64-onefile.tar.gz -C /usr/local/bin
pip3 install awscli
pip3 install awscli-local[ver1]
