//na RAM[100] pocinje polje
//duljina polja R0
//Bubble sort


@100
D = A
@startAdd
M = D

@R0
D = M
@n
M = D


//provjeravanje jesmo prosli sve elemente, vanjska petlja
(OUTER_LOOP)
@n
D = M
@END
D;JEQ

@startAdd
D = M
@first
M = D

@first
D = M + 1
@second
M = D


//unutarnja petlja usporedjuje susjedne elemente
//zamjenjuje mjesta ako je to potrebno
(INNER_LOOP)
@first
D = M
@second
D = D - M
@SWAP
D;JGT

//prelazimo na sljedeci element ako je poredak dobar
@first
M = M + 1
@second
M = M + 1

@INNER_LOOP
0;JMP


//zamjena elemenata
(SWAP)
@first
D = M
@startAdd
A = M
M = D

@second
D = M
@first
A = M
M = D

@INNER_LOOP
0;JMP

(END)
@END
0;JMP