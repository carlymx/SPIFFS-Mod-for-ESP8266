# SPIFFS-Mod-for-ESP8266

SPIFFS mod resize for ESP8266.

### What is it?

In the project "[Arduino core for ESP8266 WiFi chip](https://github.com/esp8266/Arduino)" used to manage and program the boards with the ESP8266 chip from the Arduino IDE, by replacing the files of this repository will add more options for flash memory partitioning.

![selec-spiffs-4M-2M.png](https://raw.githubusercontent.com/carlymx/SPIFFS-Mod-for-ESP8266/master/imgs/selec-spiffs-4M-2M.png)


### Why?

The idea arose from the need to adapt the flash memory of my modules to the needs of the projects.

The project with which that need was born was [McLighting](https://github.com/toblum/McLighting) that allows controlling an RGB LED strip [WS2812B](https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf) which gave storage problems in the compilation in a module [ESP8266 ESP-01](https://wiki.makersofmurcia.org/_media/esp8266-esp01.jpg?w=200&tok=b539ad). The Sketch was too large for the reserved space of the default memory by the plate library (512KB - 64KB (SPIFFS) = 448KB Total for Sketch).
An arrangement could be to dispense with some program feature but limited its functionality.

So I came up with the modification of the file system to be smaller (32KB) and thus have 480KB for Sketch. After a couple of days with the hexadecimal calculator I managed to work and compile and upload the sketch without problems.

Now the problem would come in that only have 32KB of memory for data as a Web page. But in my case more than enough.

### Instalation

- Clone the repository on your Desktop.
- Access the following directory on your PC. In Windows: ```"C:\Users\USERNAME\AppData\Local\Arduino15\packages"```.
- Copy ```".\Esp8266\*.*"``` And replace.
- Start in IDE Arduino and you can already select from the menu ```"Tools"``` the 'Size of the Flash` you need.


### File changes:

- 06-11-2018: Added the 4MB Flash Files system (2MB for SPIFFS).

- 07-06-2018: This repository was created with the 512KB Flash File System (32KB for SPIFFS).
