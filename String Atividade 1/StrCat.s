#concatena duas strings
.data
	string1: .asciiz "Matheus e " #string inicializada + \0
	string2: .asciiz "Madu" #string inicializada + \0

.text


main:
	#load adress das strings
	la $a0, string1
	la $a1, string2

	jal strcat #pulando para strcat e salvando o endereco em $ra
	j exit #pulando para o final

strcat:
	#incializando 
	li $t0, 0
	li $t1, 0
	
	addi $sp, $sp, -4 #$sp = $sp - 4
	sw $a0, 0($sp) #SW registrador fonte, valor (registrador destino)

	lb $t2, 0($a0) #carrega o byte da memória nos oito bits de ordem inferior do registrador

	while: #looping
		lb $t2, 0($a0)
		beq $t2, 0, cat #desvia para cat se $t2 = 0
			addi $a0, $a0, 1 #$a0 = $a0 + 1
			j while #jump para while
	cat:
		lb $t2, 0($a1) #carregando o unico byte
		sb $t2, 0($a0) #armazena um byte do registrador $t2 em um endereço de memória
		
		beq $t2, 0, return #desvia para return se $t2 = 0
			addi $a0, $a0, 1 #$a0 = $a0 +1

			addi $a1, $a1, 1 #$a1 = $a1 +1
			j cat #jump para cat

	return:  
		lw $v0, 0($sp) #pegando o valor do endereço e armazenando em $v0
		addi $sp, $sp, 4 #$sp = $sp + 4
		jr $ra #jump para o endereço de $ra

exit:
	move $a0, $v0  #$a0 = $v0
	li $v0, 4 #print string
	syscall
	
	#saida 
	li $v0, 10
	syscall