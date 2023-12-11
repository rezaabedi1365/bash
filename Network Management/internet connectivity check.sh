#!/bin/bash

ping -c 2 gooddgle.com >  /dev/null 2>&1

#check if ping was successful
if [[ $? -eq 0 ]]; then
    echo "internet  is available"
else
    echo "internet is not available"

fi

