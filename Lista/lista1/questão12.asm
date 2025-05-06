#   Faça um programa que calcule uma média ponderada de três números inteiros, com
#   pesos 3, 9 e 15, sem usar a operação de multiplicação.
.text
main:
	addi $2,$0,5 # Lê primeino num
	syscall 
	add $8,$0,$2
	
	addi $2,$0,5 # Lê segundo num
	syscall
	add $9,$0,$2
	
	addi $2,$0,5 # Lê terceiro num
	syscall
	add $10,$0,$2
	
	addi $12,$0,27 # Soma dos pesos
	
	sll $13,$8,1 # 2^1 = 2 ->mais proximo do peso 3
	sll $14,$9,3 # 2^3 = 8 -> mais proximo do peso 9
	sll $15,$10,4 # 2^4 = 16 -> mais proximo do peso 15
	
	# Ajuste nos valores
	
	add $13,$13,$8 
	add $14,$14,$9
	sub $15,$15,$10
	
	#Soma dos Valores
	add $16,$13,$14
	add $16,$16,$15
	
	div $16,$12
	mflo $17 #media
	
	#Print
	
	addi $2,$0,1
	add $4,$0,$17
	syscall

	addi $2,$0,10
	syscall
	
	
	
	
	
	
	
	
	
	
	
	