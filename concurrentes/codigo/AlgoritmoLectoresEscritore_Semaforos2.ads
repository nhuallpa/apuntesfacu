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