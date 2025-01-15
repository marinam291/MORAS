@R0
D=M
@NEG
D;JLT

@R1
D=M
@NEG
D;JLT
@NULA
D;JEQ

// Kopira brojeve da ne bude destruktivno
$MV(R0,R3)
$MV(R1,R4)
@R2
M=0

@R4
M=M-1

$WHILE(R4)

    // Mnozenje R0 i R3
    $WHILE(R3)
        $SUM(R0,R2,R2)
        @R3
        M=M-1
    $END

    // Premjestanje rezultata mnozenja u R3
    $MV(R2,R3)
    // Ciscenje starog rezultata
    @R2
    M=0

    @R4
    M=M-1
$END

$MV(R3,R2)
@R3
M=0

(END)
@END
0;JMP

(NULA)
@R2
M=1
@END
0;JMP

(NEG)
@R2
M=-1
@END
0;JMP