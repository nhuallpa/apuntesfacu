task body filosofo is
begin
    think
    wait(Fork[0]) -- Tenedor de la derecha. Con I = 4 -> 4 + 1 mod 5 = 0
    wait(Fork[4]) -- Tenedor de la izquierda
    eat
    signal(Fork[4])
    signal(Fork[0])
end