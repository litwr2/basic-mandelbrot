# basic-mandelbrot
Basic texts that implement very slow computation and visualization Mandelbrot set

All systems draw 320x200 raster in 2 colors.  This project was based on codes from [this blog post](http://cbmandelbrot.blogspot.com/).  Codes in this project are straightforward adaptation for systems tested.

## Benchmark results

Rank|System                 |Code type           |              Timing|          Emulator
:---|:----------------------|:-------------------|-------------------:|-----------------:
 1  |Sanyo MPC-25FD         |ROM MSX Basic 2.0   |16h 46m  8s = 60368s|    openMSX 0.15.0 
 2  |Commodore 128 PAL      |ROM Basic 7.0       |12h 52m 57s = 46377s|          vice 3.3
 3  |Commodore 128 NTSC     |ROM Basic 7.0       |12h 32m 45s = 45165s|          vice 3.3
 4  |Corvette               |ROM Basic 2.0       |12h 17m 56s = 44276s|     emu80 4.0.411
 5  |Corvette               |Disk Basic 2        |11h 41m 38s = 42098s|     emu80 4.0.411
 6  |Commodore Plus/4 NTSC  |ROM Basic 3.5       |11h 20m 14s = 40814s|   plus4emu 1.2.10
 7  |Commodore Plus/4 PAL   |ROM Basic 3.5       |10h 16m 49s = 37009s|   plus4emu 1.2.10
 8  |IBM PC 5150            |BASIC.COM           | 6h 12m 19s = 22339s|           pcem 17
 9  |Spectrum QL            |ROM BASIC           | 6h  3m 10s = 21790s|     QemuLator 3.4
10  |IBM PC 5150            |BASIC.COM           | 5h 57m 48s = 21468s|pce-ibmpc 20220925
11  |IBM PC 5150            |Cassette BASIC C1.10| 5h 57m 26s = 21446s|pce-ibmpc 20220925
12  |IBM PC 5150            |GWBASIC v3.22       | 5h 43m 30s = 20610s|pce-ibmpc 20220925
13  |Amstrad CPC6128        |ROM Basic           | 5h 13m 32s = 18812s|   ep128emu 2.0.11
14  |Commodore Plus/4       |AustroSpeed compiler| 4h 28m 56s = 16136s|   plus4emu 1.2.10
15  |BBC Micro Model B      |ROM Basic II        | 4h 27m 54s = 16074s|    b-em v-ec63538
16  |BBC Master 128         |ROM Basic IV        | 3h 17m 35s = 11855s|    b-em v-ec63538
17  |Panasonic FS-A1GT      |ROM MSX Basic 4.0   | 2h 50m 56s = 10256s|    openMSX 0.15.0
18  |IBM PC 5170 @6MHz 2ws  |Cassette BASIC C1.10| 2h 19m 58s =  8398s|           pcem 17
19  |IBM PC 5170 @6MHz 2ws  |BASIC.COM           | 2h 19m 56s =  8396s|           pcem 17
20  |BBC Master Turbo       |ROM Basic IV        | 1h 31m 40s =  5500s|    b-em v-ec63538
21  |IBM PC 5150            |BASIC Compiler 2.0  |    35m 27s =  2127s|pce-ibmpc 20220925
22  |IBM PC 5170 @6MHz 2ws  |BASIC Compiler 2.0  |    13m 57s =   837s|           pcem 17
23  |Archimedes 305         |ROM Basic V v1.05   |    11m  4s =   664s|    Arculator v2.1
24  |Raspberry Pi/B @700 MHz|BBC Basic V v1.53   |         5s =     5s|

Two emulators were used to get results for the IBM PC 5150 (the first IBM PC).  The both show almost the same results.  The IBM PC 5170 is the original name for the IBM PC/AT.

The Sanyo MPC-25FD is a typical MSX2 computer.  The Panasonic FS-A1GT is an MSX turboR computer.

There is information that QemuLator is approximately 7% faster than the real iron.

Several screenshots of the final screens are [here](https://litwr2.github.io/basic-mandelbrot/screenshots.html).

