#!/usr/bin/env bash

echo -e "\nBem vindo ao MetaForm, seus dados estão seguros!\n"
echo "--------------------------------------------------------"

sleep 5s

echo "Pronto, podemos começar..."

echo -e "\nNome de usuário: $USER 
Sua Home pessoal é: $HOME
O Shell utilizado é: $SHELL
" 

echo "Vou precisar que você informe alguns dados cadastrais, okay?"

read -p "Qual seu nome completo? " nome_completo

#verifica se o nome é nulo, se for, o programa finaliza.
test -z "$nome_completo" \
&& { echo "Opa, eu realmente preciso do seu nome. Sem ele não podemos continuar... Tchau!"; exit ;}


read -p "Qual sua idade? " idade

#verifica se a idade é nulo, se for, o programa também finaliza
test -z "$idade"  \
&& { echo "Infelizmente você não pode inserir um valor nulo para a idade, tenho que finalizar por aqui." ; exit ;}

read -p "E seu endereço, qual é? " endereco

#verifica se o endereço é nulo, se for, o o programa finaliza.
test -z "$endereco" \
&& { echo "Putz, sem endereço não tem como a gente continuar, tchau."; exit ;}

read -p "ÓTIMO! Agora preciso do seu telefone: " telefone

#verifica se o telefone é nulo, se for, o programa finaliza.
test -z "$telefone" \
&& { echo "Então, você não pode informar um valor vazio para o telefone, vou ter que finalizar." ; exit ;}

read -p "Qual seu nível de escolaridade, por favor? " escolaridade

#verifica se a escolaridade é nula, se for, finaliza o programa.
test -z "$escolaridade" \
&& { echo "Sem informar a escolaridade não posso continuar o seu cadastro, caro amigo(a)." ; exit ;}

read -p "Sua profissão: " profissao

#verificar se a profissão é nula, se for, finalizamos o programa 
test -z "$profissao" \
&& { echo "Você precisa informar a sua profissão, caso contrário não poderemos continuar."; exit;}

echo "Vi que seu nome completo é: $nome_completo, não sei mas tenho a impressão que
te conheço de algum lugar viu..."
echo "Sua idade é: $idade - hmm você é bem novo(a) hein, legal!"
echo "Seu endereço: $endereco - Tenho um amigo que mora aí pertinho de você"
echo "Seu telefone é: $telefone, incrível você é uma dessas pessoas que telefona para os outros?"
echo "Sua escolaridade: $escolaridade, legal, legal... ;)"
echo "Profissão: $profissao, eita... que interessante!"

read -p "Uma última coisa, você confirma que seus dados estão corretos? [S/N] " confirmacao

#converte a entrada do usuário para maiúsculo e faz o teste para verificar se o usuário digitou S ou N.
confirmacao=${confirmacao^^}					#converte tudo o que for digitado em maiúsculo e salva novamente em confirmação, depois seguimos com o teste.

test "$confirmacao" = "S" 																															\
&& echo "Ótimo, todos os seus dados estão cadastrados na nossa base de dados. Obrigado!"		\
|| { echo "Bom, a execução do código vai encerrar por aqui. Corrija e volte aqui novamente."; exit ;}				
