.text
.globl main

main:
    li x10, 0x100      #base addresses of a,
    li x11, 0x200      #b,
    li x12, 0x300      #and c

    #initializing array a 
    li x2, 3
    sb x2, 0(x10) 
    li x2, 4
    sb x2, 1(x10) 
    li x2, 5
    sb x2, 2(x10) 
    li x2, 6
    sb x2, 3(x10) 

    #initializing array b
    li x3, 6
    sh x3, 0(x11) 
    li x3, 7
    sh x3, 2(x11) 
    li x3, 8
    sh x3, 4(x11) 
    li x3, 9
    sh x3, 6(x11) 

    #i = 0
    lb x5, 0(x10)
    lh x6, 0(x11)
    add x7, x5, x6
    sw x7, 0(x12)

    #i = 1
    lb x5, 1(x10)
    lh x6, 2(x11)
    add x7, x5, x6
    sw x7, 4(x12)

    #i = 2
    lb x5, 2(x10)
    lh x6, 4(x11)   
    add x7, x5, x6
    sw x7, 8(x12)

    #i = 3
    lb x5, 3(x10)
    lh x6, 6(x11)
    add x7, x5, x6
    sw x7, 12(x12)
end:
    j end 
