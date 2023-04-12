# Lab 1: WinMips64
By Luis Daniel Casais Mezquida   
Computer Organization 22/22  
Bachelor's Degree in Computer Science and Engineering, grp. 89  
Universidad Carlos III de Madrid

## Ejercicio 1: Forwarding
1. Ejecutar el programa [`e1.s`](e1.s) sin forwarding y observar el número de ciclos
2. Ejecutar el programa [`e1.s`](e1.s) sin forwarding y analizar el cambio y el speedup

## Ejercicio 2: Riesgos RAW
1. Analizar los riesgos de datos (RAW) del programa [`e2.s`](e2.s)  
2. Ejecutar el programa sin forwarding y observar el número de ciclos
3. Ejecutar el programa sin forwarding y analizar el cambio y el speedup

## Ejercicio 3: Riesgos estructurales
Configura la arquitectura para que las multiplicaciones en FP tengan una latencia en ejecución de 5 ciclos y las sumas en punto flotante de 2.

1. Comprobar los riesgos estructurales de [`e3.s`](e3.s).
2. Calcular los CPI del programa en la arquitectura MIPS64
3. ¿Existen riesgos RAW?
4. ¿Existen riesgos WAW? Modifica el programa para exhibir uno.
5. ¿Existen riesgos WAR? Modifica el programa para exhibir uno.


## Instalación y ejecución
Descarga [WinMIPS64](https://github.com/AndoniZubimendi/WinMIPS64), abre el archivo `.s` deseado, configura la arquitectura especificada, y ejecútalo.