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