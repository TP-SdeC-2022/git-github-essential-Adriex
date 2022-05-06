; TP1

segment .data

segment .text
    global calcular

calcular:
    push ebp      ; Guardo EBP en la pila 
    mov ebp, esp  ; Apunto ESP al comienzo del frame
    ; Acá reservo espacio para variables automaticas
    ;sub esp, 8    ; Variable resultado

    ; Hago el cálculo acá
    mov eax, [ebp + 8]            ; Cargo el segundo parámetro en EAX
    mul dword [ebp + 12]          ; Multiplico por el primer parámetro. El resultado se guarda en EDX:EAX

    ; Al salir
    mov esp, ebp   ; Vuelvo el stack pointer al final stack frame anterior
    pop ebp        ; Recupero EBP de la pila
    ret