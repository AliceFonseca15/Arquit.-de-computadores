#   Fa�a um programa que leia um n�mero inteiro, representando a dura��o em segundos
#   de um experimento cient�fico e imprima o tempo decorrido nesse experimento no
#   formato h:m:s.
#   Exemplo: 3755 gera uma sa�da 1:2:35
.text
main:
	addi $2,$0,5 
	syscall
	add $8,$0,$2 # $8 = 3755
	
	addi $9,$0,60
	
	div $8,$9 # 3755 / 60
	mflo $10 # quociente - 62min
	mfhi $11 # resto - 35seg
	div $10,$9 # 62 / 60 
	mflo $12 # quociente - hora
	mfhi $13 # resto - minutos
	
	addi $2,$0,1
	add $4,$0,$12
	syscall
	
	addi $2,$0,11
	addi $4,$0,':'
	syscall
	
	addi $2,$0,1
	add $4,$0,$13
	syscall
	
	addi $2,$0,11
	addi $4,$0,':'
	syscall
	
	addi $2,$0,1
	add $4,$0,$11
	syscall
	
