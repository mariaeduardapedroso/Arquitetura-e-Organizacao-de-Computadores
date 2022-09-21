.data

.text


main:
	addi $t0, $zero, 0
	addi $t0, $t0, 15

	addi $t1, $zero, 0
	addi $t1, $t1, 30
	add $t3, $t0, $t1

	li $v0,1
	move $a0,$t3
	syscall
	
	li $v0,10
	syscall

