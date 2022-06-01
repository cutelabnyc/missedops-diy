#!/bin/bash
avrdude -e -Ulfuse:w:0xff:m -Uhfuse:w:0xd9:m -Uefuse:w:0xf7:m -v -p atmega328pb -C ../avrdude.conf -c usbtiny -D -U flash:w:firmware.hex:i