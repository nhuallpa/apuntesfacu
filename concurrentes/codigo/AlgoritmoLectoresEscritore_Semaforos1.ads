
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