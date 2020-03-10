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