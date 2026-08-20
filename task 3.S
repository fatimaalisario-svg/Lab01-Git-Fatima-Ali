.text
.globl main

main:
    li x1, 5             #a = 5
    li x6, 0             #temp = 0
    addi x2, x6, 0       #b = temp + 0;
    addi x1, x2, 32      #a = b + 32
    add x4, x1, x2       #d = (a + b)
    addi x4, x4, -5      #d = d - 5
    sub x3, x2, x1       #c = b - a
    sub x5, x1, x4       #e = a - d
    add x5, x5, x3       #e = e + c
    add x5, x5, x4       #e = e + d
    add x5, x1, x2       #e = a + b
    add x5, x4, x5       #e = d + e
#TASK 4A:
    li x10, 0x78786464
    li x11, 0xA8A81919



end:
    j end 


