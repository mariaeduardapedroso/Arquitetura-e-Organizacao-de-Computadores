.data 

.text

	main:
	
	li $v0, 5 #pegar um inteiro 
	syscall
        move $t1,$v0 #$t0 == a

	li $v0, 5 #pegar um inteiro
	syscall
        move $t2,$v0 #$t1 == b
        
        slti $s1,$t1,0
        beq $s1,0,while
	#logica para deixar positivo
	
	
        slti $s1,$t2,0
        beq $s1,0,while
        #logica para deixar positivo
        
        
        while:
        beq $t2,$t1,sair
        addi $t2,$t2,1 #incrementar contador
        add $t3,$t3,$t1 #soma multiplicacao
        j while
        
        
        
        
        sair:
        #imprimir na tela
	li $v0,1
	move $a0,$t3
	syscall

	#fechar o sistema
	li $v0,10
	syscall
        
        
        
