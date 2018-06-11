# SPIFFS-Mod-for-ESP8266

SPIFFS mod resize for ESP8266.

### ¿Que es?

En el proyecto "[Arduino core for ESP8266 WiFi chip](https://github.com/esp8266/Arduino)" que sirve para gestionar y programar las placas con el chip ESP8266 desde el IDE de Arduino, al remplazar los archivos de este repositorio añadira mas opciones de particionado de la memoria flash.

![selec-spiffs-4M-2M.png](https://raw.githubusercontent.com/carlymx/SPIFFS-Mod-for-ESP8266/master/imgs/selec-spiffs-4M-2M.png)


### ¿Por que?

La idea me surgio de la necesidad de adaptar la memoria flash de mis modulos a las necesidades de los proyectos.

El proyecto con el que nacio esa necesidad fue [McLighting](https://github.com/toblum/McLighting) que permite controlar una tira de led RGB [WS2812B](https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf) el cual daba problemas de almacenamiento en la compilación en un modulo [ESP8266 ESP-01](https://wiki.makersofmurcia.org/_media/esp8266-esp01.jpg?w=200&tok=b539ad). El Sketch era demasiado grande para el espacio reservado de la memoria predeterminado por la biblioteca de la placa (512KB - 64KB (SPIFFS) = 448KB Total para Sketch).
Un arreglo podia ser prescindir de alguna caracteristica de programa pero limitaba su funcionalidad.

Así que se me ocurrio la modificación del sistema de archivos para que fuera mas pequeño (32KB) y asi disponer de 480KB para Sketch. despues de un par de días con la calculadora hexadecimal logre que funcionara y así compilar y subir el sketch sin problemas.

Ahora el problema vendria en que solo se disponen de 32KB de memoria para datos como una pagina Web. Pero en mi caso mas que suficiente.

### Instalation

-	Clona el repository en tu Escritorio.
-	Accede al siguiente directorio de tu PC. In Windows: ```"C:\Users\USERNAME\AppData\Local\Arduino15\packages"```.
-	Copia ```".\esp8266\*.*"``` y remplaza.
-	Inicia en IDE Arduino y ya puedes seleccionar desde el menu ```"Herramientas"``` el 'Tamaño de la Flash`que necesites.


### Archivo de cambios:

-	11-06-2018: Añadido el sistema de Archivos 4MB Flash (2MB para SPIFFS).

-	07-06-2018: Se creo este repositorio con el sistema de Archivos 512KB Flash (32KB para SPIFFS).



