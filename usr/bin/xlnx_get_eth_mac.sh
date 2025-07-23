#!/usr/bin/env bash

ipmi-fru --fru-file=/sys/bus/i2c/devices/1-0054/eeprom --interpret-oem-data | grep "MAC ID $1:" | awk -F': ' '{ print $2 }' | head -n1
