# Arquit.-de-computadores
Repositório da disciplina de arquitetura de computadores

**CONTEÚDO**


O $0 deve sempre conter o valor 0, não colocar nenhum valor nele.

**Uso livre dos registradores:**

$8 a $15 e $24/$25 Variáveis temporárias

$16 a $23 Variáveis salvas

HI e LO são usados apenas em multiplicação e divisão
mflo - Quociente
mfhi - Resto



**Operações Aritméticas**

SOMA

  Sintaxe:

    add $destino, $fonte1, $fonte2

  Operação(O que a sintaxe faz):

    $destino = $fonte1 + $fonte2

  Exemplo:

    add $8, $9, $10

  ADDI

  Sintaxe:

    addi $destino, $fonte1, constante

  Operação:

    $destino = $fonte1 + constante

  Exemplo:
  
    addi $8, $9, 5


SUBTRAÇÃO

  Sintaxe:
  
    sub $destino, $fonte1, $fonte2

  Operação:

    $destino = $fonte1 - $fonte2

  Exemplo:

    sub $8, $9, $10


MULTIPLICAÇÃO

PAR HI e LO recebe a multiplicação de numéros de 32bits, resultando em um de 64bits

  Sintexe:

    mult $fonte1, $fonte2

  Operação:

    HI, LO = $fonte1 * $fonte2

  Exemplo:

    mult $9, $10


DIVISÃO

  div
  
  Sintaxe:

    div $fonte1, $fonte2

  Operação:

    HI = $fonte1 % $fonte2

    LO = $fonte1 / $fonte2

  Exemplo:

    div $9, $10
    mflo $11 # quociente
    mfhi $12 # resto




**Operações lógicas**

**AND**

    and $8,$9,$10 # $8 = $9 and $10 -> resutado 0 ou 1

  

**Estrutura de descisão**

**slt** 
significa Set on Less Than — ou seja, "define como 1 se for menor".

    slt $10,$8,$9 # Testa se $8 < $9, $10 = 1 senão $10 = 0

**beq**
(branch if equal) é usada para desviar o fluxo de execução se dois registradores forem iguais.
    
    beq $10,$0,maior # se $10 == 1 vai para maior, senão continua

**bne**
 significa "branch if not equal", ou seja, "desvia se for diferente".

   




  
