# Um processador 16-bits Galvamoto16x (GM16x)
### Sobre
Um projeto desenvolvido para cadeira de Arquitetura de computadores para faculdade UFCA, atraves do qual o professor nos instruiui a montar um processador silimar ao MIPS.

Sendo assim, montamos o Galvamoto16.
Ele recebe instruções em hex diretamente na sua memoria ROM, com futuramente a implementação do assembler sera possivel escrever um codigo texto e traduzilo para hexa.

### Componentes
#### Main
O principal circuito no qual esão localizada todas as ligações entres os subcomponenstes do nosso processador.
Alguns sinais de controles tambem estão definidos aqui ....
![main.png](assets%2Fmain.png)


### Instruções
Este é o formato atual das instruções do GM16x.

| i   | hex  | op   | j   | b   | lw  | sw  | str |
| --- | ---- | ---- | --- | --- | --- | --- | --- |
| none | 0000 | 0000 | 0   | 0   | 0   | 0   | 0   |
| li  | 1dii | 0001 | 0   | 0   | 0   | 0   | 1   |
| add | 2dst | 0010 | 0   | 0   | 0   | 0   | 1   |
| addi | 3dsi | 0011 | 0   | 0   | 0   | 0   | 1   |
| or  | 4dst | 0100 | 0   | 0   | 0   | 0   | 1   |
| sl  | 5dst | 0101 | 0   | 0   | 0   | 0   | 1   |
| sli | 6dst | 0110 | 0   | 0   | 0   | 0   | 1   |
| slt | 7dst | 0111 | 0   | 0   | 0   | 0   | 1   |
| beq | 8xst | 1000 | 1   | 1   | 0   | 0   | 0   |
| bne | 9xst | 1001 | 1   | 1   | 0   | 0   | 0   |
| j   | Aiii | 1010 | 1   | 0   | 0   | 0   | 0   |
| lw  | Bdsi | 1011 | 0   | 0   | 1   | 0   | 1   |
| sw  | Cist | 1100 | 0   | 0   | 0   | 1   | 0   |
