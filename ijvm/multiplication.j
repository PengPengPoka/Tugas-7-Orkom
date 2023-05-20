; IJVM assembly code for multiplication function
MULTIPLICATION:
    ; Function prologue
    BIPUSH 0    ; Initialize z = 0
    ISTORE 3    ; Store z in local variable 3
    BIPUSH 0    ; Initialize i = 0
    ISTORE 4    ; Store i in local variable 4
    
MULTIPLICATION_LOOP:
    ILOAD 4     ; Load i into the stack
    ILOAD 1     ; Load x into the stack
    IF_ICMPGE MULTIPLICATION_END  ; If i >= x, exit loop
    
    ILOAD 3     ; Load z into the stack
    ILOAD 2     ; Load y into the stack
    IADD        ; Add y to z
    ISTORE 3    ; Store the result in z
    
    IINC 4 1    ; Increment i by 1
    GOTO MULTIPLICATION_LOOP
    
MULTIPLICATION_END:
    ILOAD 3     ; Load z into the stack
    IRETURN     ; Return z

; IJVM assembly code for main function
MAIN:
    ; Function prologue
    BIPUSH 0    ; Initialize a = 0
    ISTORE 1    ; Store a in local variable 1
    BIPUSH 0    ; Initialize b = 0
    ISTORE 2    ; Store b in local variable 2
    BIPUSH 0    ; Initialize c = 0
    ISTORE 3    ; Store c in local variable 3
    
    ; Print "enter 2 numbers: "
    LDSTR "enter 2 numbers: "   
    BIPUSH 100  ; Allocate space for scanf input
    INVOKEVIRTUAL 1
    
    ; Read inputs into b and c
    BIPUSH 2    ; Read two integers
    ILOAD 2     ; Load address of b
    ILOAD 3     ; Load address of c
    INVOKEVIRTUAL 0
    
    ; Call multiplication function
    ILOAD 2     ; Load b into the stack
    ILOAD 3     ; Load c into the stack
    INVOKESTATIC MULTIPLICATION
    
    ; Store the result in a
    ISTORE 1    ; Store the result in a
    
    ; Print the result
    BIPUSH 1    ; Print one integer
    ILOAD 1     ; Load a into the stack
    INVOKEVIRTUAL 2
    
    HALT        ; End program execution
