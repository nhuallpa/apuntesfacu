--- FUMADORES
--- En problma de fumadores hay un agente que provee los ingredientes
--- Existen tres fumadores que le faltan dos ingredientes, cada uno distinos.
--- Los ingreditens son, papel, tabaco y cerillo

-- The impossible version
    -- 1er restriccion: No se permite modificar el codigo del agente
    -- 2da restriccion: No se puede usar condicionales

-- The interesting version
    -- 1er restriccion: no se permite modificar el codigo del agente

-- The trivial version
    -- El agente indica con signal que fumador continua dependiendo de los ingredientes. Facil.


-- Codigo de version interesante:

-- Existen tres Agentes A, B y C esperando el semaforo agentSem para poner ingredientes.
agentSem: Semaphore := 1
tabacco: Semaphore := 0
paper: Semaphore := 0
match: Semaphore := 0
task agentA
body
    loop 
        wait(agentSem)
        signal(tabacco)
        signal(paper)
    end loop
end
task agentB
body
    loop 
        wait(agentSem)
        signal(paper)
        signal(match)
    end loop
end
task agentC
body
    loop 
        wait(agentSem)
        signal(tabacco)
        signal(match)
    end loop
end

--- Los FUMADORES
--- Fumador con cerillos (matches)
task smokerA
body
    loop 
        wait(tabacco)
        wait(paper)
        signal(agentSem)  -- notifica al agente que ya puede producir mas
    end loop
end
--- Fumador con tabacco
task smokerB
body
    loop 
        wait(paper)
        wait(matches)
        signal(agentSem)
    end loop
end
--- Fumador con papel
task smokerB
body
    loop 
        wait(tabacco)
        wait(matches)
        signal(agentSem)
    end loop
end

-- El problema de esta solucion es que tienen DEADLOCK
-- Suponiendo que el agente coloca TABACO Y PAPEL
-- El Smoker con Ceriillos se destraba y toma el Tabacco
-- Por otro lado, el Smoker con Tabacco toma el PAPEL.
-- Entonces el primer fumador se bloquea en wait(paper) y el segundo wait(matches). 
-- Deadlock!!!

-- SOLUCION: se agregen hilos llamados Pushers que responden a las señales del agente.
-- y realizan el seguimiento de los Ingredientes.
-- y señalan el fumador apropiado.

-- Variables y semaforores ADICIONALES:

isTabacco, isPaper, isMatch: boolean := false -- Indica si esta o no el ingrediente en la mesa
tabaccoSem: Semaphore : 0 -- para señalar al semaforo con Tabacco
paperSem: Semaphore : 0 -- para señalar al semaforo con Paper
matchSem: Semaphore : 0 -- para señalar al semaforo con Cerillo

--- Pusher A : Se despierta cuando haya tabacco en la mesa

task PusherA
body
    loop     
        wait(tabacco)
        wait(mutex)    -- para modificar las variables globales
        if (isPaper)   -- Verifica si hay ingredisnte de papel
            begin
                isPaper = false
                signal(matchSem)   --- Despierta el fumador con cerillo
            end 
        else if (isMatch)  -- Verifica si hay ingrediente de match
            begin 
                isMatch = false
                signal(paperSem)   --- Despieta el fumador que tiene papel
            end
        else
            isTabacco = true  -- Como soy primero, solo hay tabacco en la mesa
        signal(mutex)
    end loop
end
-- Fumador con Tabbaco
task smokerA
body
    loop      
        wait(tabbacoSem)  -- Espera a que un pusher avise que estan los cerillos y el papel
        makeSigarrate()
        signal(agentSem)
        smoke()
    end loop
end

--- El resto de los push y los fumadores son similares.!!!


--- PROBLEMA GENERALIZADO DE FUMADORES

-- Eliminar el requerimiento de que el agente deba esperar despues de colocar dos ingredientes.

-- SOLUCION: El agente ya no puede esperar a los fumadores.
-- Cambiamos los booleanos por contadores.

numTabacco, numPaper, numMatcher: Integer := 0

--- Pusher A : Se despierta cuando haya tabacco en la mesa

task PusherA
body
    loop     
        wait(tabacco)
        wait(mutex)
        if (numPaper)
            begin
                numPaper := numPaper - 1
                signal(matchSem)   --- Despierta el fumador con cerillo
            end 
        else if (numMatch)
            begin 
                numMatch := numMatcher - 1
                signal(paperSem)   --- Despieta el fumador que tiene papel
            end
        else
            numTabacco = true  -- Como soy primero, solo hay tabacco en la mesa
        signal(mutex)
    end loop
end

-- Las variables numTabbacco, numMatch, numPaper hacen el segimiento del estado del sistema
-- Patron SCOREBOARD

        




