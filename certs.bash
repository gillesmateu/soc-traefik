#!/bin/bash

mkdir certs
cd certs

openssl genrsa -out wildcard.soc.imerir.key

echo "renseigner *.soc.imerir pour le Common name"
echo "appuyez sur entrée pour continuer"
read

openssl req -new -out wildcard.soc.imerir.cert -x509 -days 365 -key wildcard.soc.imerir.key
