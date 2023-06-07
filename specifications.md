# Architecture 16-bits

> Required functionalities:
>
> - Load and Save from memory
>
> - Branch If
>
> - Jump
>
> - Set less then

## Instruction set

I    | func      | Binary                | Hex
---  | ---       | ---                   | ---
none |           | `0000 0000 0000 0000` | `0000`
li   | d=i       | `0001 regD iiii iiii` | `1dii`
add  | d=s+t     | `0010 regD regS regT` | `2dst`
addi | d=s+i     | `0011 regD regS iiii` | `3dsi`
sub  | d=s-t     | `0100 regD regS regT` | `4dst`
subi | d=s-i     | `0101 regD regS iiii` | `5dsi`
sll  | d*=2^i    | `0110 regD regS iiii` | `6dsi`
slr  | d/=2^i    | `0111 regD regS iiii` | `7dsi`
slt  | d=s<t     | `1000 regD regS regT` | `8dst`
slti | d=s<i     | `1000 regD regS iiii` | `9dsi`
lw   | d=s[i]    | `1001 regD regS iiii` | `Adsi`
sw   | s[i]=t    | `1010 iiii regS regT` | `Bist`
beq  | s==t?j->i | `1011 iiii regS regT` | `Cist`
bne  | s!=t?j->i | `1100 iiii regS regT` | `Dist`
j    | go to i   | `1101 iiii iiii iiii` | `Eiii`
exit |           | `1111 iiii iiii iiii` | `Fiii`

## ALU Operations
