--                      FILOSOFOS COMENSALES CON SEMAFOROS
-- Acciones Pensar y comer
-- 1 Mesa con 5 platos, 5 tenedores

-- Sincronizacion:
-- Cada filosofo puede tomar un tenedor de la izquierda y de la derecha, pero solo uno a la vez
-- Un filosofo solo puede comer si tiene dos tenedores.

-- Restricciones:
-- Un filosofo solo puede comer si tiene dos tenedores
-- Dos filosofos no pueden tener el mismo tenedor simultaneamente
-- No hay deadlock
-- No hay indivual stavation
-- Comportamiento eficiente bajo ausencia de contencion.

-- SOLUCION 1 : Presenta deadlock porque los 5 filosofos pueden tomar el tener de la izq al mismo tiempo
Fork: array(0...4) of Semaphore := (other => 1)
task body Filosofo is 
begin
    loop
        think
        wait(Fork[i])  -- Toma el tenedor de la izquirda 
        wait(Fork[i+1 mod 5]) -- Toma el tenedor de la Derecha
        eat
        signal(Fork[i])
        signal(Fork[i+1 mod 5])
    end loop
end

#Pi = #wait(fork[i]) - #signal(fork[i])
fork[i].v = 1 + #signal - #wait
fork[i].v = 1 - #Pi
   >=0    =>   #Pi <= 1


-- SOLUCION 2: Con cuarto
Fork: array(0...4) of Semaphore := (other => 1)
Room: Semaphore := 4
task body Filosofo is 
begin
    loop
        think
        wait(room) -- Limitamos la cantidad de filosofos en un cuarto para 4. Evitamos DEADLOCK al tomar los 5 al mismo tiempo.
        wait(Fork[i])
        wait(Fork[i+1 mod 5])
        eat
        signal(Fork[i])
        signal(Fork[i+1 mod 5])
        signal(room)
    end loop
end

-- Se asumio que el semaforo Room es de tipo Cola-Bloqueante, entonces cada filosofo entrar al cuarto eventualmente.
-- Con esto nos aseguramos que haya justicia.
-- El resto de los semaforos, pueden ser block-set

-- SOLUCION ASIMETRICA

-- los primeros 4 filosofos ejecutan la solucion 1, pero el 5 filosofo (qualquier), 
-- toma primero el de la derecha y luego el de la izquierda.

task body filosofo is
begin
    think
    wait(Fork[0]) -- Tenedor de la derecha. Con I = 4 -> 4 + 1 mod 5 = 0
    wait(Fork[4]) -- Tenedor de la izquierda
    eat
    signal(Fork[4])
    signal(Fork[0])
end

-- De esta manera nos evitamos entrar en deadlock o starvation