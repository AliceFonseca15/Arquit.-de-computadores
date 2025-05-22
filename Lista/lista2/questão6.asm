#  Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
#  Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
#  aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
#  pelo menos 60 anos e mais de 35 anos.
.text
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2 #Idade
	
	addi $2,$0,5
	syscall
	add $9,$0,$2 #Tempo de serviço
	
	# requisito 3
	addi $10,$0,60
	addi $11,$0,35
	
	slt $12,$8,$10 #se idade < 60
	slt $13,$9,$11 # se temp.serviço < 35
	
	beq $12,$13,iguais # compara $12 e $13, se os dois == 0, significa que pode se aposentar
	add $4,$0,'N'
	j req2
iguais:
	add $4,$0,'S'
	j imp
	
	# requisito 2
req2:
	addi $11,$0,40
	
	slt $12,$9,$11 # se temp.serviço < 40 --> $12 = 1 , senao $12 = 0
	
	beq $12,$0,iguais 
	# requisito 1
req1:	addi $11,$0,65
	
	slt $12,$8,$11 # se idade < 65 -- > $12 = 1 , senao $12 = 0
	
	beq $12,$0,iguais
	add $4,$0,'N'
	
imp:
	addi $2,$0,11
	syscall
	
	addi $2,$0,10
	syscall

		
	
	
	
	
	
	
	
	  