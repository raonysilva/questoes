#!/bin/bash
declare -a a=($' > Redireciona a saída padrão do comando para um arquivo.sobrescreve o arquivo em questão.Ex:  comando > saida.txt' $'Redireciona a saída padrão do comando para um arquivo, adiciona a saída do comando ao final do arquivo, sem apagá-lo. Ex:comando >> saida.txt' $'Redireciona a saída padrão de erros do comando para um arquivo.2> sobrescreve o arquivo em questão.Ex:comando 2>filename' $'Redireciona a saída padrão de erros do comando para um arquivo.2>> adiciona a saída do comando ao final do arquivo, sem apagá-lo.Ex:comando 2>>filename' $'Redireciona todas as saídas do comando para um arquivo.&> sobrescreve o arquivo em questão.Ex:comando &> saida_e_erros.log' $'Redireciona todas as saídas do comando para um arquivo.&>> adiciona a saída do comando ao final do arquivo, sem apagá-lo.Ex:comando &>> saida_e_erros.log' $'Redireciona o arquivo para a entrada padrão do comando.
Ex.: ./teste.sh < arq.txt' $'Segue um documento.Permite redirecionar a entrada padrão do comando para o documento escrito no bash. Observe o exemplo file.3.sh para mais informações.' $'Segue uma string. Permite redirionar a entrada padrão do comando para a string escrita no bash.Seria executar: grep t <<<"teste"' $'Conecta a saída do comando anterior com a entrada do comando seguinte.
Ex.: cat a.txt b.txt | grep nome')
echo "Duvidas Digite:
0 = >
1 = >>
2 = 2>
3 = 2>>
4 = &>
5 = &>>
6 = <
7 = <<
8 = <<<
9 = |"
read x

echo ${a[x]}
