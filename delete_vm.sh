#! /bin/sh

if [ -z $AZ_RESOURCE_GROUP ]; then
  echo 'Please set the "AZ_RESOURCE_GROUP" environment variable and try again.' >&2
  exit -1
fi

az group delete --name $AZ_RESOURCE_GROUP --no-wait --yes
