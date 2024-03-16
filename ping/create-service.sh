#!/bin/bash

sudo cp /home/jedr/ping/ping.service /etc/systemd/system/
sudo systemctl enable ping.service
sudo systemctl start ping.service
sudo systemctl status ping.service
sleep 1
cat /home/jedr/ping/ping.log
