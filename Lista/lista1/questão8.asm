#   Fa�a um programa que leia tr�s n�meros inteiros, representando a dura��o em horas,
#   minutos e segundos de um experimento cient�fico e informe essa dura��o em
#   segundos.
.text

main:
	addi $2,$0,5 #recebe horas
	syscall
	add $8,$0,$2
	
	mul $9,$8, 60 #Transforma horas em minutos
	
	addi $2,$0,5 #recebe minutos
	syscall
	add $10, $0,$2
	
	add $11,$10,$9 #soma os minutos totais
	
	mul $12, $11,60 #transforma os minutos em segundos
	
	addi $2,$0,5 #rebece segundos
	syscall
	add $13, $0,$2 
	
	add $14,$13,$12 #soma os segundos
	
	addi $2,$0,1
	add $4,$0,$14 #print segundos
	syscall
	
	
	
	
	
	
