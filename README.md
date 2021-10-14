# Twomes Temperature Monitor Hardware

This repository contains the open hardware design files for the Twomes Temperature Monitor device, this is a dedicated device, using an Espressif ESP32, and can be fitted with multiple sensors, ino order to suit different purposes: 
* It can be fitted with two DS18B20Z sensors to measure the temperature of the water returning and being sent to and from the boiler in a house. 
* Alternatvely, it can be fitted with a Si7051 temperature sensor and optional SCD41 CO₂ sensor to measure room temperature and CO₂ concentration.

The sensor is battery powered by a Lithium Thionyl battery with an AA form factor. It has a supercapacitor to assist the battery in high-current bursts.
The sensor can wirelessly send data to the [Twomes P1 Gateway measurement device](https://github.com/energietransitie/twomes-p1-gateway-firmware) using ESP-NOW.

<img src="./images/Front.jpg" height="600" /> <img src="./images/Back.jpg" height="600" />

## Table of contents
* [General info](#general-info)
* [Producing](#producing)
* [Developing](#developing) 
* [Features](#features)
* [Status](#status)
* [License](#license)
* [Credits](#credits)

## General info
This repository contains the common hardware designs, such as schematics and board layout files for both the Twomes Living Room Monitor and Twomes Boiler Monitor devices.

For the associated firmwware that you can run on this device, please see the following repositories:
* [twomes-twomes-room-monitor-firmware](https://github.com/energietransitie/twomes-room-monitor-firmware);
* [twomes-twomes-boiler-monitor-firmware](https://github.com/energietransitie/twomes-boiler-monitor-firmware);

## Producing
The folder [Output_files](https://github.com/energietransitie/twomes-temp-monitor-hardware/tree/main/TwomesSensor/Output_Files/FABRICATION) contains the necessary files to manufacture the PCBs. The files have been exported through the requirements of [JLCPCB](https://www.jlcpcb.com).

The folder [Twomes Sensor Module Enclosures](https://github.com/energietransitie/twomes-temp-monitor-hardware/tree/main/Twomes%20Sensor%20Module%20Enclosures) contains both, Fusion360 source files, and exported STL files for the Twomes P1 enclosures. The STL files can be imported into any slicer and turned into G-Code for a 3D printer.

### Printed Ciruit Board
The fabrication output files can be ordered from JLCPCB, upload the Gerber files in a zip to their [quote page](https://cart.jlcpcb.com/quote)
Select the amount of PCBs and a colour for silkscreen. All other options can be left on default.

If SMT assembly is desired, also select this option before ordering. This will take you to a page where the BOM and POS file can be uploaded. These can be found [here] Use the files [BOM_TwomesSensorJLCPCB.csv](./TwomesSensor/Output_Files/FABRICATION/BOM_AND_POS/BOM_TwomesSensorJLCPCB.csv) and [TwomesSensor-top-pos.csv](./TwomesSensor/Output_Files/FABRICATION/BOM_AND_POS/TwomesSensor-top-pos.csv).

### Enclosure
The enclosures can be 3D printed. open the STL files with your preferred slicer software and export it with the settings best suited for your printer.
If the printing is handled by an external source, send the STL files to their service.

## Developing
### Developing the PCBs
The PCB files are designed using [KiCad](https://www.kicad.org/download/), which can be downloaded for free.
Alternatively the files can sometimes be imported/converted to different EDA tools.

To export the modified PCBs. Consult the webpage of the PCB manufacturer for a guide on how their service prefers the output files.
JLCPCB has a [guide on how to export Gerbers](https://support.jlcpcb.com/article/149-how-to-generate-gerber-and-drill-files-in-kicad) and on [how to export the BOM and POS files](https://support.jlcpcb.com/article/84-how-to-generate-the-bom-and-centroid-file-from-kicad)

## Features
The Twomes P1 Gateway measurement device contains an ESP32 Microcontroller, an FTDI compatible serial programming header, a USB input for a power supply, and a RJ12 port to connect to the P1 port of a smart meter.

## Status
Project is: _Ready for testing_

## License
The hardware designs in this repository are available under the [CERN-OHL-P v2 license](./LICENSE.md), Copyright 2021 [Research group Energy Transition, Windesheim University of Applied Sciences](https://windesheim.nl/energietransitie)

## Credits
This open hardware design is a collaborative effort of:
* Sjors Smit · [@Shorts1999](https://github.com/Shorts1999)

Thanks also go to:
* Fredrik-Otto Lautenbag ·  [@Fredrik1997](https://github.com/Fredrik1997)
* Gerwin Buma ·  [@GerwinBuma](https://github.com/GerwinBuma) 
* Marco Winkelman · [@MarcoW71](https://github.com/MarcoW71)
* the makers of [KiCad](https://www.kicad.org)

Product owner:
* Marco Winkelman · [@MarcoW71](https://github.com/MarcoW71)
