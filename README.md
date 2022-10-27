# basic-mandelbrot
Basic texts that implement very slow computation and visualization Mandelbrot set

All systems draw 320x200 raster in 2 colors.  This projects initially was based on codes from [this blog post](http://cbmandelbrot.blogspot.com/)

## Benchmark results

Rank|System                |Code                |Timing     |Timing (sec)
:---|:---------------------|-------------------:|----------:|-----------:
1   |Commodore 128         |ROM Basic 7.0       |12h 53m  9s|       46389
2   |Commodore Plus 4      |ROM Basic 3.5       |10h 17m    |       37020
3   |Amstrad CPC6128       |ROM Basic           | 5h 25m 44s|       19544
4   |BBC Micro Model B     |ROM Basic II        | 4h 34m 26s|       16466
5   |Commodore Plus 4      |AustroSpeed compiler| 4h 29m    |       16140
6   |BBC Master 128        |ROM Basic IV        | 3h 22m 57s|       12177
7   |BBC Master Turbo      |ROM Basic IV        | 1h 34m  9s|        5649
8   |Raspberry Pi @700 MHz |BBC Basic           |         5s|           5


## Emulators

System                |Emulator
---------------------:|--------------:
Commodore 128         |vice 3.3
Commodore Plus 4      |plus4emu 1.2.10
Amstrad CPC6128       |ep128emu 2.0.11
BBC Micro Model B     |b-em v-ec63538
BBC Master 128        |"
BBC Master Turbo      |"

Several screenshots of the final screens are [here](http://litwr2.atspace.eu/basic-mandelbrot/screenshots.html).

