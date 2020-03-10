Fork: array(0...4) of Semaphore := (other => 1)
Room: Semaphore := 4
task body Filosofo is 
begin
    loop
        think
        wait(room) -- Limitamos la cantidad de filosofos en un cuarto para 4. Evitamos DEADLOCK al no tomar los 5 al mismo tiempo.
        wait(Fork[i])
        wait(Fork[i+1 mod 5])
        eat
        signal(Fork[i])
        signal(Fork[i+1 mod 5])
        signal(room)
    end loop
end