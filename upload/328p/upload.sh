#!/bin/bash
avrdude -e -Ulfuse:w:0xff:m -Uhfuse:w:0xd9:m -Uefuse:w:0xff:m -v -p atmega328p -c usbtiny -D -U flash:w:firmware.hex:i