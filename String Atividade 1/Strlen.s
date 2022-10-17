#mostra tamanho da string
.data
	string: .asciiz "Matheuss" #string inicializada + \0

.text

main:

	la $a0, string #load adress da string
	li $t0, 0	   #contador
	
	jal len #pulando para len e salvando o endereco em $ra
	j exit #jump para saida

len:
	move $s0, $a0 #$s0 = $a0
	li $t0, 0		#contador
length:	
	add $t1, $s0, $t0 #$t1 = $s0 + $t0
	lb $t1, 0($t1) #carrega o byte da memória nos oito bits de ordem inferior do registrador


	beq $t1, 0, return #desvia para return se $t1 = 0
		addi $t0, $t0, 1 	#$t0 = $t0 + 1
		j length #jump para length
	return:
		move $v0, $t0 #$v0 = $t0
		jr $ra #jump para o endereço de $ra

exit:
	move $a0, $v0  #$a0 = $v0
	li $v0, 1
	syscall

	#saida
	li $v0, 10
	syscall