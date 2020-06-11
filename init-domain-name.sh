#!/bin/bash

if [ -z "$1" ] 
    then
        echo "No domain name supplied"
else
    OLD_DOMAIN_NAME="example.org"
    NEW_DOMAIN_NAME="$1"

    EXCLUDE_SELF=`basename "$0"`
    EXCLUDE_README="README.md"
    SED_CMD='s/'${OLD_DOMAIN_NAME}'/'${NEW_DOMAIN_NAME}'/g'
    
    git ls-files | grep -v ${EXCLUDE_SELF} | xargs gsed -i "${SED_CMD}"
fi