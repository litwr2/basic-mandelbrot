# basic-mandelbrot
Basic texts that implement very slow computation and visualization Mandelbrot set

All systems draw 320x200 raster in 2 colors.  This project was based on codes from [this blog post](http://cbmandelbrot.blogspot.com/).  Codes in this project are straightforward adaptation for systems tested.

## Benchmark results

Rank|System                 |Code type           |Timing     |Timing (sec)
:---|:----------------------|-------------------:|----------:|-----------:
 1  |Commodore 128          |ROM Basic 7.0       |12h 52m 57s|       46377
 2  |Commodore Plus 4       |ROM Basic 3.5       |10h 16m 49s|       37009
 3  |IBM PC 5150            |BASIC.COM           | 5h 40m  1s|       20401
 4  |Amstrad CPC6128        |ROM Basic           | 5h 25m 40s|       19540
 5  |BBC Micro Model B      |ROM Basic II        | 4h 34m 22s|       16462
 6  |Commodore Plus 4       |AustroSpeed compiler| 4h 28m 56s|       16136
 7  |BBC Master 128         |ROM Basic IV        | 3h 22m 54s|       12174
 8  |BBC Master Turbo       |ROM Basic IV        | 1h 34m  8s|        5648
 9  |Raspberry Pi/B @700 MHz|BBC Basic           |         5s|           5


## Emulators

System                |Emulator
:---------------------|--------------:
Commodore 128         |vice 3.3
Commodore Plus 4      |plus4emu 1.2.10
Amstrad CPC6128       |ep128emu 2.0.11
BBC Micro Model B     |b-em v-ec63538
BBC Master 128        |"
BBC Master Turbo      |"

Several screenshots of the final screens are [here](https://litwr2.github.io/basic-mandelbrot/screenshots.html).

