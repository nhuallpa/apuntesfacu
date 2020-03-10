Algoritmo de Dekker

boolean wantP := false
boolean wantq := false
turn: integer := 1

body task P
loop forever
    seccion no critica
    wantp := true
    while wantq
        if turn = 2
            wantp := false
            await turn = 1
            wantp := true
    seccion critica
    turn := 2
    wantp := false

body task Q
loop forever
    seccion no critica
    wantq := true
    while wantp
        if turn = 1
            wantq := false
            await turn = 2
            wantq := true
    seccion critica
    turn := 2
    wantp := false

-- Las variables individuales aseguran la exclución mutua
-- Con la variable global TURN se evalua si es el turno de insistir para entrar a la seccion critica.
-- Cuando P sale de la seccion critica, activa turn=2 y libera a Q
-- Se satisfase la exclucion mutua, ausencia de deadlock, ausencia de stavation para DOS Procesos