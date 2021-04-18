#!/bin/bash
$1

case $1 in
    logica) echo "( EXPRESSÃO )	EXPRESSÃO é verdadeira
! EXPRESSÃO	EXPRESSION é falso
EXPRESSÃO1 -a EXPRESSÃO2	tanto EXPRESSÃO1 e EXPRESSÃO2 são verdadeiras
EXPRESSÃO1 -o EXPRESSÃO2	quer EXPRESSÃO1 ou EXPRESSÃO2 é verdade" ;;
    aritmetica) echo "INTEGER1 -eq INTEGER2	INTEGER1 é igual a INTEGER2
INTEGER1 -ge INTEGER2	INTEGER1 é maior ou igual a INTEGER2
INTEGER1 -gt INTEGER2	INTEGER1 é maior que INTEGER2
INTEGER1 -le INTEGER2	INTEGER1 é menor ou igual a INTEGER2
INTEIRO1 -É INTEIRO2	INTEGER1 é menor que INTEGER2
INTEGER1 -ne INTEGER2	INTEGER1 não é igual a INTEGER2" ;;
    strings) echo "-n STRING	o comprimento de STRING é diferente de zero
CORDA	equivalente a -n STRING
-z STRING	o comprimento de STRING é zero
STRING1 = STRING2	as cordas são iguais
STRING1 ! = STRING2	as cordas não são iguais" ;;
    variáveis) echo "-lt Número é menor que (LessThan)
-gt Número é maior que (GreaterThan)
-le Número é menor igual (Less Equal)
-ge Número é maior igual (Greater Equal)
-eq Número é igual (EQual)
-ne Número é diferente (NotEqual)
= String é igual
!= String é diferente
-n String não é nula
-z String é nula " ;;
    arquivos) echo "FILE1 -ef FILE2	FILE1 e FILE2 têm os mesmos números de dispositivo e inode
FILE1 -nt FILE2	FILE1 é mais recente (data de modificação) que FILE2
FILE1 -ot FILE2	FILE1 é mais antigo que FILE2
-b ARQUIVO	FILE existe e é bloco especial
-c ARQUIVO	ARQUIVO existe e é caractere especial
-d ARQUIVO	FILE existe e é um diretório
-e ARQUIVO	FILE existe
-f ARQUIVO	FILE existe e é um arquivo regular
-g ARQUIVO	FILE existe e é definido como ID do grupo
-G ARQUIVO	FILE existe e pertence ao ID do grupo efetivo
-h ARQUIVO	FILE existe e é um link simbólico (o mesmo que -L )
-k ARQUIVO	FILE existe e tem seu bit fixo definido
-L ARQUIVO	FILE existe e é um link simbólico (o mesmo que -h )
-O ARQUIVO	FILE existe e pertence ao ID do usuário efetivo
-p ARQUIVO	FILE existe e é um pipe nomeado
-r ARQUIVO	FILE existe e a permissão de leitura é concedida
-s ARQUIVO	FILE existe e tem um tamanho maior que zero
-S ARQUIVO	FILE existe e é um soquete
-t FD	O descritor de arquivo FD é aberto em um terminal
-u ARQUIVO	FILE existe e seu bit set-user-ID está definido
-w ARQUIVO	FILE existe e a permissão de gravação é concedida
-x ARQUIVO	FILE existe e a permissão de execução (ou pesquisa) é concedida
" ;;
extended) echo"-o OPTION      True if the shell option OPTION is enabled.
      -v VAR         True if the shell variable VAR is set.
      -R VAR         True if the shell variable VAR is set and is a name
                     reference.
      ! EXPR         True if expr is false.
      EXPR1 -a EXPR2 True if both expr1 AND expr2 are true.
      EXPR1 -o EXPR2 True if either expr1 OR expr2 is true.

      arg1 OP arg2   Arithmetic tests.  OP is one of -eq, -ne,
                     -lt, -le, -gt, or -ge.";;
    q) echo "Saindo..." ;;
    *) echo "Não reconheço a tecla digitada..." ;;
esac
