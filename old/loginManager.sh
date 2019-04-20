#!/bin/bash

if [ $(tty | sed -e "s/.*tty\(.*\)/\1/") == "1" ]
then
    startx
fi
