#!/bin/bash

if [ -z "$1" ] 
    then
        echo "No domain name supplied"
else
    OLD_DOMAIN_NAME="example.org"
    NEW_DOMAIN_NAME="$1"

    EXCLUDE_SELF=`basename "$0"`
    SED_CMD='s/'${OLD_DOMAIN_NAME}'/'${NEW_DOMAIN_NAME}'/g'
    
    grep -rl ${OLD_DOMAIN_NAME} ./data | xargs sed -i "${SED_CMD}"
fi