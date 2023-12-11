#!/bin/bash

ip addr show ens160 | grep inet | grep -v inet6 | awk '{print $2}' | cut -d/ -f1
