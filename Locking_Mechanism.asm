ORG 0000H
LJMP MAIN
ORG 0003H
LOOP1:
  MOV P0,A
  ACALL DELAY
  RRC A
  DJNZ R2,LOOP1
  SJMP LBL
MAIN:
  MOV IE,#81H
  MOV P0,#OOH
  MOV A,#88H
  MOV R1,#32H
  MOV R2,#32H
  LOOP:
    MOV P0,A
    ACALL DELAY
    RLC A
    DJNZ R1,LOOP

DELAY:
  MOV R3,#255
  HERE2:
    MOV R4,#255
    HERE:
      DJNZ R4,HERE
    DJNZ R3,HERE2
RET
LOOP2:SJMP LOOP2
LBL:END
