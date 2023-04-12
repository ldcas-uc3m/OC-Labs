# Lab 2: Reordenación y desenrollado
By Luis Daniel Casais Mezquida   
Computer Organization 22/22  
Bachelor's Degree in Computer Science and Engineering, grp. 89  
Universidad Carlos III de Madrid

## Ejercicio 1: Reordenación de código
Dado el código [`p1.s`](p1.s):
1. ¿Qué hace el programa?
2. Configura la arquitectura:
    1. 5 ciclos para multiplicación FP
    2. 2 ciclos para suma FP
    3. 10 ciclos para división FP
    3. Ejecutar con forwarding
3. Ejecutarlo e indicar el CPI.
4. Reordenar el código para reducir el CPI lo máximo posible ([`p1_mod.s`](p1_mod.s)).

## Ejercicio 2: Desenrollado de bucles
Dado el código [`p2.s`](p2.s):
1. ¿Qué hace el programa?
2. Configura la arquitectura:
    1. 2 ciclos para suma FP
    2. Ejecutar con forwarding
3. Ejecutarlo e indicar el CPI.
4. Desenrollar el bucle tres veces, de manera que cada iteración del nuevo programa corresponda a cuatro iteraciones del antiguo. Indicar el nuevo CPI y el speedup.
5. Reordenar las instrucciónes y renombrar los registros para optimizar el CPI ([`p2_mod.s`](p2_mod.s)). Indicar el nuevo CPI y el speedup.


## Instalación y ejecución
Descarga [WinMIPS64](https://github.com/AndoniZubimendi/WinMIPS64), abre el archivo `.s` deseado, configura la arquitectura especificada, y ejecútalo.