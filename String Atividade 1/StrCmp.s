#compara duas strings e mostra 0 se igual 1 se diferente
.data
	str0: .asciiz "Matheus" #string inicializada + \0
	str1: .asciiz "Madu" #string inicializada + \0

.text

main:
	#load adress das strings
	la $a0, str0
	la $a1, str1

	jal strCmp #pulando para strCmp e salvando o endereco em $ra
	
	j exit #jump para saida

strCmp:
	#carrega o byte da memória nos oito bits de ordem inferior do registrador
	lb $t0, 0($a0)
	lb $t1, 0($a1)

	bne $t0, $t1, notEqual #desvia para notEqual se $t0 != $t1
		beq $t0, 0, return0 #desvia para return0 se $t0 = 0
		addi $a0, $a0, 1 #$a0 = $a0 + 1
		addi $a1, $a1, 1 #$a1 = $a1 + 1
		
		j strCmp #jump para strCmp
		
		return0:
		li $v0, 0
		jr $ra #jump para o endereço de $ra

	notEqual:
		add $t2, $t2, $t0 #$t2 = $t2 + $t0
		add $t3, $t3, $t1 #$t3 = $t3 + $t1
		
		beq $t0, 0, return #desvia para return se $t0 = 0
			beq $t1, 0, return #desvia para return se $t1 = 0
				addi $a0, $a0, 1 #$a0 = $a0 + 1
				addi $a1, $a1, 1 #$a1 = $a1 + 1

				#carregando o unico byte
				lb $t0, 0($a0)
				lb $t1, 0($a1)
				j notEqual #jump para notEqual
		return:
			bgt $t2, $t3, return1 #pula pra return1 if $t2>$t3
				li $v0, -1
				jr $ra #jump para o endereço de $ra
			
			return1:
				li $v0, 1
				jr $ra #jump para o endereço de $ra

exit:
	move $a0, $v0  #$a0 = $v0
	li $v0, 1
	syscall

	#saida 	
	li $v0, 10
	syscall