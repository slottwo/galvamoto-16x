.data
    array:  .word   10, 5, 8, 15, 3, 20    # Vetor de exemplo
    size:   .word   6                     # Tamanho do vetor

.text
.global main
main:
    # Carregar o endereço do vetor
    la $t0, array
    lw $t1, size                   # Carregar o tamanho do vetor
    addiu $t1, $t1, -1             # Subtrair 1 do tamanho para obter o índice máximo

    # Inicializar o maior elemento com o primeiro valor do vetor
    lw $t2, 0($t0)                 # Carregar o primeiro elemento do vetor
    addiu $t0, $t0, 4              # Avançar o ponteiro do vetor para o próximo elemento

loop:
    beq $t1, $zero, end_loop       # Se o índice chegar a zero, terminar o loop

    lw $t3, 0($t0)                 # Carregar o próximo elemento do vetor
    ble $t3, $t2, skip_update      # Se o próximo elemento for menor ou igual ao atual, pule a atualização
    move $t2, $t3                  # Atualizar o maior elemento encontrado

skip_update:
    addiu $t0, $t0, 4              # Avançar o ponteiro do vetor para o próximo elemento
    addiu $t1, $t1, -1             # Decrementar o índice
    j loop                         # Voltar ao início do loop

end_loop:
    # O maior elemento está em $t2
    # Você pode imprimir o valor ou fazer qualquer outra operação desejada aqui

    # Terminar o programa
    li $v0, 10
    syscall
