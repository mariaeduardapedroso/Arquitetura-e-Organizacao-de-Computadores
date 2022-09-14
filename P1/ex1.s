.data 

.text

	main:
	#pegar um inteiro
	li $v0, 5 
	syscall
        move $t0,$v0 #$t0 == a

	#pegar um inteiro
	li $v0, 5 
	syscall
        move $t1,$v0 #$t1 == b
        
        #logica do if a
        slti $s1,$t0,-5 
        bne $s1,0,else #se a>-5
        
        #logica do if b
        beq $t1,15,if #b == 15 
        slti $s1,$t1,15 #b < 15
        bne $s1,1,else #se b < 15  

        if:
        li $t3,10
        move $a0,$t3
        
        else:
        li $t3,0
        move $a0,$t3        
        
        sair:
        #imprimir na tela
	li $v0,1
	syscall

	#fechar o sistema
	li $v0,10
	syscall
	
