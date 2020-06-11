#!/bin/bash

OLD_DOMAIN_NAME="example.org"
NEW_DOMAIN_NAME="example.com"
SED_CMD='s/${OLD_DOMAIN_NAME}/${NEW_DOMAIN_NAME}/g'

echo "sed: " ${SED_CMD}

git grep -rl ${OLD_DOMAIN_NAME} . | xargs gsed -i ${SED_CMD}
