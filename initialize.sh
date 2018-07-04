#!/usr/bin/env bash
apt install -y curl
curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
bash bootstrap_salt.sh -n
cp minion /etc/salt/minion
sudo cp -a salt/. /srv/salt/

salt-call state.highstate --log-level info --no-color
