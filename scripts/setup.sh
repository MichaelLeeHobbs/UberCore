#!/usr/bin/env bash
sudo mkdir /var/lib/ipa-master-data
sudo chown root:docker /var/lib/ipa-master-data
sudo chmod g+w /var/lib/ipa-master-data
sudo cp configuration/ipa-master/ipa-server-install-options /var/lib/ipa-master-data/