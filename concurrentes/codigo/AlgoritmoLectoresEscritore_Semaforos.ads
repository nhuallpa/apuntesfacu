
-- Para situaciones donde las estructuras de datos, base de datos ó sistema de archivos son 
-- leidos y escritor por hilos concurrentes.

-- La solucion es asimetrica el escritor y el productor ejecutan codigos distintos antes de entrar en la seccion critica.

-- Las restricciones de sincronizacion son:
-- Readers : Es proceso no requiere la esclucion de otro proceso Readers
-- Writers : Proceso que requiere la exclución de otros procesos Reader y Writers

-- El patron de exclucion se llama Categorical Mutual Exclution.
-- Un hilo en la seccion critica no necesita excluir otro hilos pero en la presencia de una categoria en la
-- seccion critica excluye otras categorias.

-- SOLUCION 1: Prioridad a Lectores

reader: Integer := 0  -- Cuenta cuantos lectores hay en el cuarto
mutex: semaforo := 1  -- Protege el contador.
roomEmpty: semaforo := 1 -- Vale 1 sin no hay escritores y ni lector en la SC


task body Writer
begin    
    wait(roomEmpty)
    seccion_critica
    signal(roomEmpy)
end

task body Reader
begin

    wait(mutex)
        reader := reader + 1
        if reader = 1 then wait(roomEmpty)
    signal(mutex)

    seccion_critica

    wait(mutex)
        reader := reader - 1
        if reader = 0 then signal(roomEmpty) -- Si es el ultimo reader, señalo room empty
    signal(mutex)
end

-- Se utiliza un patron llamado Lightswich - El primero que entra prende la luz, el ultimo q sale lo apaga.
-- Se arma un pre y pos protocolo para simplificar el reader.
mutex: semaforo := 1  -- Protege el contador.
reader: Integer := 0  -- Cuenta cuantos lectores hay en el cuarto

procedure LockIfFirst(s: Semaphore, count: Integer)
begin
    wait(mutex)
    if (count = 1) then wait(s) end if  -- Si es el primero toma el semaforo
    signal(mutex)
end

procedure UnlockIfLast(s: Semaphore, count: Integer)
    wait(mutex)
    if (count = 0) then signal(s) end if --Si es el ultimo libera el semaforo
    signal(mutex)
begin
end
-- Entonces se simplifica el Lector de esta manera:
reader: Integer := 0  -- Cuenta cuantos lectores hay en el cuarto
mutex: semaforo := 1  -- Protege el contador.
roomEmpty: semaforo := 1 -- Vale 1 sin no hay escritores y ni lector en la SC

task body Reader
begin
    LockIfFirst(roomEmpty, reader)
    seccion_critica
    UnlockIfLast(roomEmpty, reader)
end

-- PROBLEMA: Es posible que el writer tenga stavation 
-- Si un escritor llega mientras hay escritores en la seccion critica, este puede esperar en la cola
-- por siempre mientras que los lector continuan llegando. 
-- Tal como llegen lectores ante del ultimo de los lector, simpre habra un lector en el Room.
-- Hasta que los lectores no llegen a CERO, no pueden dale paso a los escritores.

-- SOLUCION 2: Agregar un molinete (turnstile). Algoritmo Justo.

roomEmpty: Semaphore := 1
readers:Integer := 0 -- Cuenta cuantos lectores estan en la sala
turnstile: Semaphore := 1 -- es un molineta para los reader y un mutex para los writers

task body Writer
begin    
    wait(turnstile)   -- Si lo toma el escrito, fuerza a los lectores que se encolen en el turnline
        wait(roomEmpty) -- Si hay lectores en la sala, el escritor se bloquea aca! lo que significa que esta bloqueado el molineta
        # seccion_critica
    signal(turnstile) -- libera el molineta y desbloquea los lectores encolados o otros writes
    signal(roomEmpy)
end

task body Reader
begin
    wait(turnstile)
    signal(turnstile)

    LockIfFirst(roomEmpty, reader)
    # seccion_critica
    UnlockIfLast(roomEmpty, reader) -- Cuando el ultimo reader deje la sala, se garantiza que al menos un escritor este en la sala
end

-- Esta solucion garantiza que al menos un escritor proceda. 
-- En esta solucion no hay prioridad entre escritores y lectores. Hay Justicia!.
-- Pero aun es posible que lectores entran mientras haya mas escritores encolados.

-- A veces es preferible una solución que da mas prioridad a los escritores! Y esto depende del contexto.
-- Por ejemplo: Si los writes tienen tiempos criticos de updates, es mejor minimizar las lecturas de datos viejos
-- y priorizar la actualización.

-- SOLUCION 3: (Mas prioridad a los escritores) 
-- Mientras entran escritores, ningun lector debe entrar hasta que se haya ido el último escritor.

writers: Integer := 0 -- Nuevo contador
readers: Integer := 0
noWrites: semaforo := 1
noReader: semaforo := 1  -- Nuevo semaforo

task body Writer
begin    
    LockIfFirst(noReader, writers)   
        
        wait(noWrites) 
        # seccion_critica -- Garantiza que no hay otro escritor y lector al tomar noReaders y noWriters
                          -- Muchos escritores pueden pasar 
        signal(noWrites)

    UnlockIfLast(noReader, writers)
end

task body Reader
begin
    wait(noReader)
        LockIfFirst(noWrites, readers)
    signal(noReader)

    # seccion_critica -- Si el lector esta en la seccion critica, mantiene tomado noWriter para encolar a los escritores

    UnlockIfLast(noWrites, readers) -- Si termina el ultimo escritor, se desbloquea noWrites para que pasen mas escritores.
end

