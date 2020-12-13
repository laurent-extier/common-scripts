#!/bin/bash

source ./env

if [ -z "${WLP_HOME_DIR}" ]
then
        echo "WLP_HOME_DIR variable not set."
        exit -1
fi

if [ -z "${applications_list}" ]
then
        echo "applications_list variable not set."
        exit -1
fi

rm -rf "${WLP_HOME_DIR}/logs"
rm -rf "${WLP_HOME_DIR}/workarea"

for i in "${aplications_list[@]}"; do
        rm -f "${WLP_HOME_DIR}/apps/$i"
done
