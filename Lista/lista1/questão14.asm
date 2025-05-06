#   Faça um programa que leia um número inteiro e imprima 1 se o valor for ímpar e 0 se
#   o valor for par.
.text
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $9,$0,1000 # divisor milhar
	
	div $8,$9
	mfhi $10
	
	addi $9,$0,100 # centena
	
	div $10,$9
	mfhi $10
	
	addi $9,$0,10 #dezena
	
	div $10,$9
	mfhi $10
	
	addi $11,$0,2 
	
	div $10,$11 # divide por 2 
	mfhi $10
	
	addi $2,$0,1
	add $4,$0,$10 # Print o resto 0 ou 1
	syscall
	
	addi $2,$0,10
	