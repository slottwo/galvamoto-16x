.data
    size: .word 6
    array: .word 10, 5, 8, 15, 3, 20

.text
    lw $1 $0[0]     # size
    li $2 1         # i = 1
    lw $3 $2[0]     # m=v[0]
LOOP:
    li $f END
    beq $2 $1      
    addi $2 $2 1   # i++
    lw $4 $2[0]
    stl $5 $3 $4   # r=m<v[i]
    li $f ELSE
    ben $5 $0
    add $3 $4 $0
ELSE:
    j LOOP
END:
    sw $2[0] $3
