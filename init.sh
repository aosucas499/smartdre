#!/bin/bash


#screen -d -m bash /usr/sbin/nwfermi_daemon.sh
#rm -f /var/run/dbus/pid > /dev/null 2>&1
#sleep 1
export LANG=es_ES.UTF-8
screen -d -m /opt/SMART\ Technologies/SMART\ Product\ Drivers/bin/.SMARTBoardService_elf &
/opt/SMART\ Technologies/SMART\ Product\ Drivers/bin/.SMART\ Board\ Tools_elf




