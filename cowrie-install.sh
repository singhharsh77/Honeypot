#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing dependencies..."
sudo apt install git python3-venv python3-pip libssl-dev libffi-dev build-essential libpython3-dev virtualenv -y

echo "Cloning Cowrie..."
cd ~
git clone https://github.com/cowrie/cowrie.git
cd cowrie
virtualenv --python=python3 cowrie-env
source cowrie-env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "Copying sample config..."
cp etc/cowrie.cfg.dist etc/cowrie.cfg
cp etc/userdb.txt.dist etc/userdb.txt

echo "Cowrie installation complete. Use 'bin/cowrie start' to run it."
