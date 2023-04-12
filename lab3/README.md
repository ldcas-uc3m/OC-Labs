# Lab 3: Software pipelining
By Luis Daniel Casais Mezquida   
Computer Organization 22/22  
Bachelor's Degree in Computer Science and Engineering, grp. 89  
Universidad Carlos III de Madrid

## Ejercicio 1
El objetivo de ésta práctica es utilizar la segmentación software para incrementar el nivel de paralelismo de las instrucciones.  

Considere el siguiente bucle:
```
loop:
    l.d f0, 0(r1)
    add.d f4, f0, f12
    s.d f4, 0(r1)
    daddi r1, r1, -8
    bnez r1, loop
```

1. Escriba el código anterior en un archivo [`p1.s`](p1.s). Utilizando las directivas de ensamblador, reserve 10x8 Bytes de memoria para un vector X de 10 elementos tipo double. Al principio del programa cargue la dirección de su último elemento en `r1`.
2. Configure la arquitectura con:
    1. FP addition: 2 ciclos
    2. Enable Forwarding
3. Ejecuta el programa. Observe el número de stalls para cada instrucción. ¿Cuál es el CPI?
4. Reescrba el código para obtener una versión más segmentada del bucle ([`p4.s`](p4.s)). Calcule el CPI y el speedup.
5. El código puede ser optimizado al ejecutar el bucle n-2 veces agregando el código de postprocesamiento necesario. Implemente esta mejora y calcule el CPI y el speedup ([`p5.s`](p5.s)).
6. El código puede optimizarse aún más. Realice el reordenado necesario y calcule el CPI y el speedup ([`p6.s`](p6.s)).

## Instalación y ejecución
Descarga [WinMIPS64](https://github.com/AndoniZubimendi/WinMIPS64), abre el archivo `.s` deseado, configura la arquitectura especificada, y ejecútalo.