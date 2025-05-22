#  Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada
#  dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
#  após a média o a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
#  A média para aprovação é 60.
.text
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2 #nota 1
	
	addi $2,$0,5
	syscall
	add $9,$0,$2 #nota 2
	
	addi $2,$0,5
	syscall
	add $10,$0,$2 #nota3
	
	add $11,$0,6 # soma dos pesos
	
	add $12,$0,2
	mul $13,$9,$12 # n2 * peso 2
	
	add $12,$0,3
	mul $14,$10,$12 # n3 * peso 3
	
	add $15,$8,$13 
	add $15,$15,$14 # soma das notas
	
	div $15,$11
	mflo $16 # quociente --> nota do aluno
	
	add $12,$0,60
	slt $17,$16,$12 # se $16 < 60 -> $17 = 1, senao $17 = 0
	
	beq $17,$0,aprovado
	addi $5,$0,'R'
	j imp
aprovado:
	addi $5,$0,'A'
	
imp:	
	add $4,$0,$16
	addi $2,$0,1
	syscall
	
	add $4,$0,$5
	addi $2,$0,11
	syscall
	
	addi $2,$0,10
	syscall
	