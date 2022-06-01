#!/bin/bash
avrdude -e -Ulfuse:w:0xff:m -Uhfuse:w:0xdd:m -Uefuse:w:0xf9:m -v -p atmega168p -C ../avrdude.conf -c usbtiny -D -U flash:w:firmware.hex:i