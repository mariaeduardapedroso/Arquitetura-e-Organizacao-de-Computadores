.data

.text

main:
	li $t0,5
	sw $t0,40($sp)#regiao da pilha pra colocar dados posicao 10
	
	li $t1,20
	sw $t1,160($sp)#regiao da pilha pra colocar dados posicao 40
	
	#pegar os valores da memoria e trazer pro registrador
	lw $t2,40($sp) 
	lw $t3,160($sp)
	
	add $t4,$t2,$t3
	
	#colocar o resultado na memoria
	sw $t4,400($sp)
	
	#mostrar resultado
	lw $t5,400($sp)
	li $v0,1
	move $a0,$t5
	syscall
	
	li $v0,10
	syscall
