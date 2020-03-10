B: array[0..N] of Integer
In_Ptr, Out_Ptr : Integer := 0
Elements: Semaphore := 0
Spaces: Semaphore := N

task body Producer is
begin
    loop
        wait(Spaces)
        produce(I)
        B[In_Ptr] := I
        In_Ptr := (In_Ptr + 1) mod N
        signal(Elements)
    end loop
end

task body Consumer is
begin
    loop
        wait(Elements)
        I = B[Out_Ptr]
        Out_Ptr = (Out_Ptr + 1) mod N
        signal(Spaces)
        consume(I)
    end loop
end
