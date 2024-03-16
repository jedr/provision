#!/bin/bash

while true
do
  ping -D -c 1 t-mobile.pl | grep 'bytes from'
  ping -D -c 1 8.8.8.8 | grep 'bytes from'
  sleep 5
done