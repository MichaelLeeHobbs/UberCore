#!/usr/bin/env bash
sudo openssl genrsa -out ./configuration/haproxy/ubercore.local.key 1024
sudo openssl req -new -key ./configuration/haproxy/ubercore.local.key \
                   -out ./configuration/haproxy/ubercore.local.csr

sudo openssl x509 -req -days 365 -in ./configuration/haproxy/ubercore.local.csr \
                    -signkey ./configuration/haproxy/ubercore.local.key \
                    -out ./configuration/haproxy/ubercore.local.crt

sudo cat ./configuration/haproxy/ubercore.local.crt ./configuration/haproxy/ubercore.local.key | sudo tee ./configuration/haproxy/ubercore.local.pem