# Lab 4: Optimización del código
By Luis Daniel Casais Mezquida   
Computer Organization 22/22  
Bachelor's Degree in Computer Science and Engineering, grp. 89  
Universidad Carlos III de Madrid

## Ejercicio 1
Dado el siguiente código en C:
```c
int main() {
    int i = 0;
    int j = 0;
    int x = 0;

    for (i = 0; i < 10; i++) {
        i = i + 1;
        j = i - 1;
        x = x + (i * j);
    }
}
```
1. Reescribir el código en ensamblador para obtener una versión segmentada del bucle en WinMIPS64 ([`init_code.s`](init_code.s)).
2. Configurar la arquitectura de la siguiente forma:
    1. FP Add: 2 ciclos
    2. Multiplication: 5 ciclos
    3. Enable Forwarding
3. Ejecute el programa. Calcule el CPI.
4. Optimice el programa aplicando la reordenación que considere oportuna. Calcular los nuevos CPI y speedup.

## Instalación y ejecución
Descarga [WinMIPS64](https://github.com/AndoniZubimendi/WinMIPS64), abre el archivo `.s` deseado, configura la arquitectura especificada, y ejecútalo.