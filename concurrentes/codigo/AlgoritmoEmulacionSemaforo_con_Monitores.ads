monitor semaforo_emulation is
S: integer := S0
Not_Zero: Condition

procedure Semaphoro_Wait is
begin
    if S=0 then Wait(Not_Zero) end if
    S := S - 1
end

procedure Semaphoro_Signal is
    S := S + 1
    Signal(Not_Zero)
end

-- La variable S mantiene el valor del semaforo y se inicializa en un numero > 0
-- La condition variable Not_Zero, mantiene la cola de procesos que esperan a que el 
-- semaphoro no sea negativo.