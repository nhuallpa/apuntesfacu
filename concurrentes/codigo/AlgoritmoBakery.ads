-- ALGORITMO EXCLUCION MUTUA BACKERY PARA N PROCESOS

-- Un proceso que desea entrar en la seccion critica, se requiere
-- que tome un numero de ticket el cual sera el valor mas grande
-- de todos lo que hayan tomado un ticket previamente.
-- Situacion similar a la de los clientes entran a una panaderia y toman un ticket
-- para ser atendidos.

-- VERSION SIMPLIFICADA: para dos procesos
np:integer := 0
nq:integer := 0

task P
    loop forever
        seccion no-critica
        np := nq + 1
        await nq = 0 or np <= nq
        seccion critica
        np := 0

task Q
    loop forever
        seccion no-critica
        nq := np + 1
        await np = 0 or nq < np
        seccion critica
        nq := 0


-- VERSION N PROCESOS
number: integer Array := [0,0,...,0]
task P
    loop forever
        seccion no-critica
        number[i] := 1 + max(number)   -- cada proceso toma el valor maximo
        for all other process j
            await (number[j] = 0) or number[i] << number[j]
        seccion critica
        number[i] := 0


-- No es practico por dos razones.
--  1- El numero de ticket no tiene limite si algun proceso siempre esta en la zona critica
--  2- Cada proceso tiene que consultar el numero de ticket del resto de los procesos.

