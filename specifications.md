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

## Instruction format

I    | Binary                | Hex
---  | ---                   | ---
none | `0000 0000 0000 0000` | `0000`
lw   | `0001 regD regS iiii` | `1dsi`
sw   | `0010 regD regS iiii` | `2dsi`

## Instruction set
