#/!bin/bash

az storage account create -n cloudynademo2 \
    -g cloudyna2019-euw-rg \
    -l westeurope \
    --sku Standard_LRS \
    --subscription "MVP Sponsorship"