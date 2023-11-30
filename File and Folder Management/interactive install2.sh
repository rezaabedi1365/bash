#!/bin/bash
#
echo "do you want to INSTALL"
printf 'enter [y/n] '
read ans
case ${ans:=y} in [yY]*) ;; *) exit ;; esac
echo "do the rest to INSTALL"
exit
