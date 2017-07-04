#!/bin/sh

lng=$(setxkbmap -v | awk -F "+" '/symbols/ {print$2}')
if [ "$lng" == "us" ] ; then
  setxkbmap -model abnt2 -layout br -variant abnt2
else
  setxkbmap us
fi
