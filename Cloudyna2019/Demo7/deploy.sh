#/!bin/bash

az group deployment create -g cloudyna2019-euw-rg \
    --template-file template.json \
    --subscription "MVP Sponsorship"