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