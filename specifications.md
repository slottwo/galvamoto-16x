# Architecture 16-bits

> Required functionalities:
>
> - Load and Save from memory
> - Branch If
> - Jump
> - Set less then

## Instruction set

| I    | func      | Binary                | Hex    |
| ---- | --------- | --------------------- | ------ |
| none |           | `0000 0000 0000 0000` | `0000` |
| li   | d=i       | `0001 regD iiii iiii` | `1dii` |
| add  | d=s+t     | `0010 regD regS regT` | `2dst` |
| addi | d=s+i     | `0011 regD regS iiii` | `3dsi` |
| sub  | d=s-t     | `0100 regD regS regT` | `4dst` |
| subi | d=s-i     | `0101 regD regS iiii` | `5dsi` |
| sll  | d\*=2^i   | `0110 regD regS iiii` | `6dsi` |
| slr  | d/=2^i    | `0111 regD regS iiii` | `7dsi` |
| slt  | d=s<t     | `1000 regD regS regT` | `8dst` |
| slti | d=s<i     | `1001 regD regS iiii` | `9dsi` |
| lw   | d=s[i]    | `1001 regD regS iiii` | `Adsi` |
| sw   | s[i]=t    | `1010 iiii regS regT` | `Bist` |
| beq  | s==t?j->i | `1011 iiii regS regT` | `Cist` |
| bne  | s!=t?j->i | `1100 iiii regS regT` | `Dist` |
| j    | go to i   | `1101 iiii iiii iiii` | `Eiii` |
| jr   |           | `1111 0000 regS 0000` | `Firi` |

## ALU Operations

---

## New I-Set

| i    | hex  | asm          |
| ---- | ---- | ------------ |
| none | 0000 |              |
| li   | 1dii | d=i          |
| add  | 2dst | d=s+t        |
| addi | 3dsi | d=s+i        |
|      | 4dst |              |
| sl   | 5dst | d\*=2^t      |
| sr   | 6dst | d/=2^t       |
| slt  | 7dst | d=s<t        |
| beq  | 8xst | s==t ? -> $f |
| bne  | 9xst | s!=t ? -> $f |
| j    | Aiii | -> i         |
| lw   | Bdsi | d=\*(s+i)    |
| sw   | Cist | \*(s+i)=t    |

| i    | hex  | op   | j   | b   | lw  | sw  | str |
| ---- | ---- | ---- | --- | --- | --- | --- | --- |
| none | 0000 | 0000 | 0   | 0   | 0   | 0   | 0   |
| li   | 1dii | 0001 | 0   | 0   | 0   | 0   | 1   |
| add  | 2dst | 0010 | 0   | 0   | 0   | 0   | 1   |
| addi | 3dsi | 0011 | 0   | 0   | 0   | 0   | 1   |
|      | 4dst | 0100 | 0   | 0   | 0   | 0   | 1   |
| sl   | 5dst | 0101 | 0   | 0   | 0   | 0   | 1   |
| sr   | 6dst | 0110 | 0   | 0   | 0   | 0   | 1   |
| slt  | 7dst | 0111 | 0   | 0   | 0   | 0   | 1   |
| beq  | 8xst | 1000 | 1   | 1   | 0   | 0   | 0   |
| bne  | 9xst | 1001 | 1   | 1   | 0   | 0   | 0   |
| j    | Aiii | 1010 | 1   | 0   | 0   | 0   | 0   |
| lw   | Bdsi | 1011 | 0   | 0   | 1   | 0   | 1   |
| sw   | Cist | 1100 | 0   | 0   | 0   | 1   | 0   |
