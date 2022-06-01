# Programming your board

Your Missed Ops circuit boards should come pre-programmed. However, if for some reason you need to re-program them, or if for some reason we forgot to program it, then you can use the .hex files in this directory to program your board. 

The easiest way to do this is with the `upload.sh` scripts in each directory. It's important to use these scripts since they also include the correct fuse settings for each of the three atmega chips used in the different hardware revisions of Missed Ops. In order to figure out which chip you have, pull off the bottom PCB and look for a square chip on the inside-top. Look closely (you may need a magnifying glass) and you should be able to read the chip name, which will include either `168pa`, `328p` or `329pb`. 

![](../img/IMG_2571.jpeg)

We tried to color-code the jumpers as well to make it a bit easier.

- *white* - 328p
- *green* - 328pb
- *blue* - 168pa

However, it's worth looking closely at the chip to double-check. If you try to run the wrong upload script it won't hurt your chip, but if it's not working this is the first thing to check.

To run the upload script, you'll first need to download this repository. You can checkout the github repo, or just download the zip. Then, open up the terminal and navigate to the `upload` subdirectory that matches your chip. For example, if you have a `168pa` chip, you might do something like this:

```sh
cd missedops-diy/upload/168pa
./upload.sh
```

This should take care of everything else. You'll need a hardware programmer--we recommend using the [AVR Pocket Programmer](https://www.sparkfun.com/products/9825) from SparkFun. You'll also need the `avrdude` command line program.

If you are using the AVR Pocket Programmer, you'll connect the ribbon cable to the J24 jumpers on the back PCB. Be sure to connect them with the red stripe towards the center of the board, as pictured.

![](../img/IMG_2572.jpeg)