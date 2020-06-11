#!/bin/bash

if [ -z "$1" ] 
    then
        echo "No domain name supplied"
else
    sh ./init-domain-name.sh $1
    sh ./init-letsencrypt.sh $1
fi
