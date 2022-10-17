#copia uma string para outra
.data
	msg: .asciiz "mensagem aaa" #string inicializada + \0
	msg2: 

.text


main:
	#load adress das strings
	la $a0, msg 
	la $a1, msg2

	jal cpy #pulando para cpy e salvando o endereco em $ra
	j exit #pulando para o final

cpy:
	move $s0, $a0
	move $s1, $a1
	li $t2, 0		#contador
copy:

	add $t0, $s0, $t2	#msg
	add $t1, $s1, $t2	#msg2

	lb $t0, 0($t0)		#carrega conteudo de msg[i] para t0
	
	sb $t0, 0($t1)      #armazena um byte do registrador $t0 em um endereço de memória

	beq $t0, 0, return  #desvia para return se $t0 = 0
		addi $t2, $t2, 1
		j copy
	return:
		move $v0, $s1
		jr $ra #jump para o endereço de $ra
exit:
	
	move $a0, $v0   #$a0 = $v0
	li $v0, 4 #	print string
	syscall

	#saida 
	li $v0, 10
	syscall 

	
