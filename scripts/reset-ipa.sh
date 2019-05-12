#!/usr/bin/env bash
sudo rm -Rf /var/lib/ipa-master-data/*
sudo rm -Rf /var/lib/ipa-master-data/.configfil*
sudo cp configuration/ipa-master/ipa-server-install-options /var/lib/ipa-master-data/
docker rm ubercore_ipa_1