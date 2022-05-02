# Missed Ops DIY Kit Instructions

Hi and thanks for buying the Missed Ops DIY kit. Here's how you build it.

## Contents

Your kit should contain:

- 10 3-pin headers
- 7 3-pin sockets
- 8 PJ398 jacks
- 2 PJ301 jacks
- 1 switch
- 1 toggle
- 10 nuts
- 1 PCB layer 1
- 1 PCB layer 2
- 1 Missed Ops aluminum face panel
- 4 blue LEDs
- 4 green LEDs
- 2 yellow LEDs
- 1 10-pin header
- 1 jumper (blue or green, but probably blue)
- 1 potentiometer
- 1 ribbon cable

## Building

### 1. Get the base board and the pin sockets

The base board is the one with Missed Opportunities written on it.

![](./img/DSC_0023_Cropped.jpg)

### 2. Start by soldering the two outer pin sockets (J18 and J22)

![](./img/DSC_0026_Cropped.jpg)
![](./img/DSC_0027_Cropped.jpg)

The plastic on the socket should be the same side as the white outline around the pads. This is true for all the pin headers and sockets.

You only need to solder one pin on each for now, to hold everything in place.

![](./img/DSC_0029_Cropped.jpg)

### 3. Solder the four inner pin sockets (J19, J20, J21, J23)

![](./img/DSC_0030_Cropped.jpg)
![](./img/DSC_0031_Cropped.jpg)

Again, for now you only need to solder the inner pins. Make sure the plastic of the sockets is flush with the PCB.

### 4. Put the seven 3-pin headers into the pin sockets

![](./img/DSC_0032_Cropped.jpg)

Make sure to insert the longer side of the header, so the shorter side sticks out.

### 5. Align the top board, and slide the board onto the pins (J12, J13, J14, J15, J16)

![](./img/DSC_0035_Cropped.jpg)

### 6. Solder the pin you've just inserted through the top board, then solder the remaining pins on the bottom board

![](./img/DSC_0033_Cropped.jpg)
![](./img/DSC_0034_Cropped.jpg)

### 7. Separate the boards, gently pulling from both sides

### 8. Insert the 10k trimmer potentiometer and solder it in place (RV1)

![](./img/DSC_0036_Cropped.jpg)

### 9. Solder the 2x5 power header (J26) and the 3-pin header for the random generator's jumper (J11)

![](./img/DSC_0037_Cropped.jpg)
![](./img/DSC_0038_Cropped.jpg)
![](./img/DSC_0039_Cropped.jpg)

### 10. (Optional) Solder two 3-pin headers to create a 6-pin ISP header (J24)

![](./img/DSC_0040_Cropped.jpg)
![](./img/DSC_0041_Cropped.jpg)

The Atmega on your board comes preprogrammed, so you only need these pins if you want to upload your own firmware.

### 11. Insert the PJ-398 (Thonkiconn) jacks into the top board, soldering only the middle pin on each (J1, J2, J3, J4, J5, J6, J7, J8)

![](./img/DSC_0043_Cropped.jpg)
![](./img/DSC_0044_Cropped.jpg)
![](./img/DSC_0045_Cropped.jpg)

Soldering only the middle pin keeps things flexible so you can make sure the jacks are flush with the board.

### 12. Take the PJ-301 jacks, and snip the excess metal jacket casing off the jacks

![](./img/DSC_0046_Cropped.jpg)

This is what they look like before you snip off the excess metal jacket casing.

![](./img/DSC_0047_Cropped.jpg)

You'll want the metal casing to be flush with the plastic part of the jack. Otherwise, the jack will sit too high on the PCB.

### 13. If needed, remove one of the ground pins from one of the jacks

![](./img/DSC_0049_Cropped.jpg)

Because the two PJ-301 jacks are so close together, they share a pad. Fitting pins on both into that pad can be difficult, so you can remove one of the ground pins to make it fit more easily. Each jack has two ground pins, so removing one won't cause any issues.

### 14. Insert the PJ 301 jacks, **but do not solder them yet** (J9, J10)

![](./img/DSC_0050_Cropped.jpg)

### 15. Insert all of the LEDs, **but do not solder them yet** (D2-D11)
**Be careful of LED orientation!** Make sure the square socket matches up with the flat side of the LED

### 16. Insert the toggle switch, **but do not solder them yet** (SW2)

![](./img/DSC_0053_Cropped.jpg)
![](./img/DSC_0054_Cropped.jpg)

You can use different color LEDs if you want, but the resistor values for each LED are calibrated for the original colors.

### 17. Put the front panel on

![](./img/DSC_0056_Cropped.jpg)

You only need to use three nuts to secure the panel for now. The goal is to make sure everything is held in place and lines up correctly.

### 18. Hold the module panel-side down so the LEDs fall flush with the panel

![](./img/DSC_0057_Cropped.jpg)

Lift the module up with the panel facing down, so that the LEDs are pulled flush to the panel. You may need to wiggle them around a bit.

### 19. Position the module panel-side down, so the LEDs stay in place, and solder the jacks, switch, and LEDs

![](./img/DSC_0058_Cropped.jpg)

### 20. Trim the LED leads

![](./img/DSC_0060_Cropped.jpg)

### Snap the board together and screw on the remaining washers and nuts

Don't forget to add a jumper to the pins on the back of the module, as in the last picture, if you want to enable the random gate generator.

![](./img/DSC_0062_Cropped.jpg)
![](./img/DSC_0063_Cropped.jpg)

## Programming

Your Missed Ops circuit boards should come pre-programmed. However, if for some reason you need to re-program them, you can use the .hex file in the `upload` directory to flash the Missed Ops program to the board. Be sure to run the `upload.sh` script, which includes the correct settings for the fuses on the atmega chip. We recommend using the [AVR Pocket Programmer](https://www.sparkfun.com/products/9825) from SparkFun. You'll also need the `avrdude` command line program.
