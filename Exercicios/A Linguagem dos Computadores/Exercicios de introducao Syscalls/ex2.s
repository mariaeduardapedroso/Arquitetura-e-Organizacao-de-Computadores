.data

.text

main:

	li $v0, #pegar um inteiro
	syscall
        move $t0,$v0

	li $v0, #pegar um inteiro
	syscall
        move $t1,$v0
	
	sub $t2,$t0,$t1
	

	#mostrar resultado
	li $v0,1
	move $a0,$t2
	syscall
	
	li $v0,10
	syscall
