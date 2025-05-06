# 	Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para
# 	frente. Exemplo: 384 gera uma saída 483
.text
main:
	addi $2,$0,5 #recebe o valor
	syscall
	add $8,$0,$2 # Muda a variavel
	
	addi $9,$0,100 # diviso -> centena
	
	div $8,$9 # 384 / 100
	mflo $10 # Quociente = 3 --> Terceiro numero a ser printado
	mfhi $11 # Resto = 84
	
	addi $9,$0,10 # divisor -> dezenas
	
	div $11,$9 # 84 /10
	mflo $12 # Quociente = 8 --> Segundo num
	mfhi $13 #Resto = 4 --> Primeiro num
	
	#PRINTS
	
	addi $2,$0,1
	add $4,$0,$13 # Print 1 num
	syscall
	
	addi $2,$0,1
	add $4,$0,$12 # Print 2 num
	syscall
	
	addi $2,$0,1
	add $4,$0,$10 # Print 3 num
	syscall
	
	addi $2,$0,10 # Termina o código
	syscall
	
	
	
	
	
	
	
	
	
	
	
	
	