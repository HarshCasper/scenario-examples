docker pull localstack/localstack:latest
wget https://github.com/localstack/localstack-cli/releases/download/v2.2.0/localstack-cli-2.2.0-linux-amd64-onefile.tar.gz
sudo tar xvzf localstack-cli-2.2.0-linux-amd64-onefile.tar.gz -C /usr/local/bin
rm localstack-cli-2.2.0-linux-amd64-onefile.tar.gz
pip3 install awscli
pip3 install awscli-local[ver1]
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
apt install nodejs
npm install --global yarn
npm install -g aws-cdk-local aws-cdk
