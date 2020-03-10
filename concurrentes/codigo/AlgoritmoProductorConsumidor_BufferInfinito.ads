
B: array(0..infinity) of Integer
In_Ptr, Out_Ptr: Integer := 0
Elements: Semaphore := 0


task body Producer is
    I: Integer
begin
    loop
        Produce(I)
        B[In_Ptr] := I
        Int_Ptr := Int_Ptr + 1
        Signal(Elements)  
    end loop
end

task body Consumer is
    I: Integer
begin
    loop
        wait(Elements)
        I = B[Out_Ptr]
        Out_Ptr := Out_Ptr + 1
        Consume(I)  
    end loop
end

