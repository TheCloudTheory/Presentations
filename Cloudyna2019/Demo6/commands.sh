#/!bin/bash

az storage account list --resource-group cloudyna2019-euw-rg

az resource list --tag conference
az resource list --tag 'conference*'
az resource list --tag conference=Cloudyna2019