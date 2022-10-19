#! /bin/sh

if [ -z $1 ]; then
  echo 'Please enter VM Image and try again.' >&2
  exit -1
fi

if [ -z $AZ_RESOURCE_GROUP ]; then
  echo 'Please set the "AZ_RESOURCE_GROUP" environment variable and try again.' >&2
  exit -1
fi

if [ -z $AZ_VM_NAME ]; then
  echo 'Please set the "AZ_VM_NAME" environment variable and try again.' >&2
  exit -1
fi

if [ -z $VM_USERNAME ]; then
  echo 'Please set the "VM_USERNAME" environment variable and try again.' >&2
  exit -1
fi

az group create --name $AZ_RESOURCE_GROUP --location japaneast

az vm create \
    --resource-group $AZ_RESOURCE_GROUP \
    --name $AZ_VM_NAME \
    --image $1 \
    --admin-username $VM_USERNAME \
    --generate-ssh-keys

az vm list-ip-addresses --resource-group $AZ_RESOURCE_GROUP --name $AZ_VM_NAME --output table
