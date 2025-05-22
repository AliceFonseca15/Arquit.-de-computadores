#  Faça um programa que leia dois números e escreva a relação de grandeza entre eles.
#  Ex. 345 e 23 gera a saída 345>23. Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a
#  saída 12=12
.text
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $2,$0,5
	syscall
	add $9,$0,$2
	
	slt $10,$8,$9 # Compara se $8 < $9, $10 = 1 senão: $10 = 0
	
	beq $10,$0,maior # se $10 == 0 vai para maior, else: continua
	addi $11,$0,'<'
	j imp
maior:	
	addi $11,$0,'>'	
imp: 
	addi $2,$0,1
	add $4,$0,$8
	syscall
	
	addi $2,$0,11
	add $4,$0,$11
	syscall
	
	addi $2,$0,1
	add $4,$0,$9
	syscall 
	
	addi $2,$0,10
	syscall