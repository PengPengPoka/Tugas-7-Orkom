MULTIPLICATION:
    BIPUSH 0    ; 10 01 00 00 00 00 00 00
    ISTORE 3    ; AC 03
    BIPUSH 0    ; 10 01 00 00 00 00 00 00
    ISTORE 4    ; AC 04
    
MULTIPLICATION_LOOP:
    ILOAD 4     ; B4 04
    ILOAD 1     ; B4 01
    IF_ICMPGE MULTIPLICATION_END  ; 99 00 0B
    ILOAD 3     ; B4 03
    ILOAD 2     ; B4 02
    IADD        ; 60
    ISTORE 3    ; AC 03
    IINC 4 1    ; 84 04
    GOTO MULTIPLICATION_LOOP  ; A7 F7 FB
    
MULTIPLICATION_END:
    ILOAD 3     ; B4 03
    IRETURN     ; AC
    
MAIN:
    BIPUSH 0    ; 10 01 00 00 00 00 00 00
    ISTORE 1    ; AC 01
    BIPUSH 0    ; 10 01 00 00 00 00 00 00
    ISTORE 2    ; AC 02
    BIPUSH 0    ; 10 01 00 00 00 00 00 00
    ISTORE 3    ; AC 03
    
    LDSTR "enter 2 numbers: "  ; AB 00 13
    BIPUSH 100  ; 10 64
    INVOKEVIRTUAL 1  ; B6 01
    
    BIPUSH 2    ; 10 02
    ILOAD 2     ; B4 02
    ILOAD 3     ; B4 03
    INVOKEVIRTUAL 0  ; B6 00
    
    ILOAD 2     ; B4 02
    ILOAD 3     ; B4 03
    INVOKESTATIC MULTIPLICATION  ; B8 00 00
    
    ISTORE 1    ; AC 01
    
    BIPUSH 1    ; 10 01
    ILOAD 1     ; B4 01
    INVOKEVIRTUAL 2  ; B6 02
    
    HALT        ; FF
