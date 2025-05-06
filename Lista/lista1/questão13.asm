#   Faça um programa que imprima a frase “Hello World”.

.text
main:
	addi $2,$0,11
	add $4,$0,'H'
	syscall
	
	addi $2,$0,11
	add $4,$0,'e'
	syscall
	
	addi $2,$0,11
	add $4,$0,'l'
	syscall
	
	addi $2,$0,11
	add $4,$0,'l'
	syscall
	
	addi $2,$0,11
	add $4,$0,'o'
	syscall
	
	addi $2,$0,11
	add $4,$0,' '
	syscall
	
	addi $2,$0,11
	add $4,$0,'W'
	syscall
	
	addi $2,$0,11
	add $4,$0,'o'
	syscall
	
	addi $2,$0,11
	add $4,$0,'r'
	syscall
	
	addi $2,$0,11
	add $4,$0,'l'
	syscall
	
	addi $2,$0,11
	add $4,$0,'d'
	syscall
	
	
	