

# You can use the below Azure cli commands to set the terraform remote backend, or you can do it via the portal

``` shell
#!/bin/bash
## The Storage account name must be unique, and the values below should match your backend.tf
RESOURCE_GROUP_NAME=arunrg
STORAGE_ACCOUNT_NAME=arun77
CONTAINER_NAME=aruncontainer

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location canadacentral

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME
```

###
1) AZ login
2) terraform init
3) terraform plan
4) terraform apply --auto-approve
```
NOTE: First run tf without backend.tf state file storing in local, then create storage and container manually then update in backend.tf state file is storing in container to secure infra