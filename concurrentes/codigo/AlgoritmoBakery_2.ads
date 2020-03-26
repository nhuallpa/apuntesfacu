np:integer := 0
nq:integer := 0

task body P is
begin
    loop
        seccion no-critica
        np := nq + 1
        await nq = 0 or np <= nq
        seccion critica
        np := 0
    end loop
end
task body Q is
begin
    loop
        seccion no-critica
        nq := np + 1
        await np = 0 or nq < np
        seccion critica
        nq := 0
    end loop
end

