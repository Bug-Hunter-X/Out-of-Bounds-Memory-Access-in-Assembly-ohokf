mov ecx, [some_valid_index_register] ;Ensure ECX holds a valid index
mov eax, [some_length_register] ;Get array length
;Bounds check:
cmp ecx, eax
jge out_of_bounds_handler ;Jump to error handler if out of bounds
mov eax, [ebx+ecx*4] ;Safe memory access
jmp continue_execution
out_of_bounds_handler:
;Handle the out-of-bounds error appropriately.  Examples might include:
; - Displaying an error message
; - Returning an error code
; - Terminating the program
continue_execution:
;Continue execution