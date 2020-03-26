
number: integer Array := [0,0,...,0]
task body P is
begin
    loop 
        seccion no-critica
        number[i] := 1 + max(number)   -- cada proceso toma el valor maximo
        for all other process j
            await (number[j] = 0) or number[i] << number[j]
        seccion critica
        number[i] := 0
    end loop
end
