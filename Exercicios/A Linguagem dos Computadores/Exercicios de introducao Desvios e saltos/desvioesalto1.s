.data
#Considerando:

	 save: .word 1, 1, 1, 1, 1, 10 #pegando o vetor declarando a variavel array
.text
	main:
	#$s3 = i converncao representacao da variavel
	#$s5 = k representacao da variavel
	la $s6, save #pegando a referencia do vetor
	
	Loop:
		 sll $t0, $s3, 2 #deslocamento a esquerda para o lugar certo do array usando indice
		 li $s5,1 #colocando valor 1 no registrador
		 add $t0, $t0, $s6 #adiciona em $t0 $s6
		 lw $t1, 0($t0) #lower pega ps dados da memoria e poe em t1 usando o t0 deslocado em cima
		 bne $t1, $s5, Sair #salte para sair se for diferente $t1 de $s5
			 addi $s3, $s3, 1 #adiciona 1 no s3 indice
			 j Loop #aonde da o jump pulo pra loop
	
	Sair:
		#fechar sistema
		li $v0,10
		syscall
