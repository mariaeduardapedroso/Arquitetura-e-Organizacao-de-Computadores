.data
	save: .word 1, 1, 1, 1, 1, 10 #declarando variavel array
.text
	main:
		li $s3,0
		li $s5,1 
		la $s6, save #modo de pegar a referencia do vetor
		
	while: #parte while
	
		add $t0,$s6,$s3
		lw $t1, 0($t0)
		bne $t1,$s5,sair #if nosso 
		addi $s3,$s3,4
		j while #aonde da o jump pulo para uma parte

	sair:#parte final do codigo
	
		#imprimir no console
		li $v0,1
		move $a0,$s3
		syscall
		
		#fechar sistema
		li $v0,10
		syscall
