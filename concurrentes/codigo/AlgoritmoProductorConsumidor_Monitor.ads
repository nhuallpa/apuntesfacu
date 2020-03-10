monitor Producer_Consumer_Monitor is

    B : array(0..N) of integer
    In_Ptr, Out_Ptr := 0
    Count: Integer := 0
    Not_Full, Not_Empty: Condition

    procedure Append(I)
    begin
        if Count = N then wait(Not_Full) end if
        B[In_Ptr] = I
        In_Ptr := (In_Ptr + 1) mod 5
        signal(Not_Empty)
    end Append

    procedure Take(I)
    begin
        if Count = 0 then wait(Not_Empty) end if
        I = B[Out_Ptr]
        Out_Ptr := (Out_Ptr + 1) mod 5
        signal(Not_Full)
    end Take

end Producer_Consumer_Monitor

task body Productor is
    I: Integer
begin
    loop
        Produce(I)
        Append(I)
    end loop
end


task body Consumidor is
    I: Integer
begin
    loop
        Take(I)
        Consume(I)
    end loop
end
