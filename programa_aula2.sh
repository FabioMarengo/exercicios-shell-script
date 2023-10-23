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
read -p "Qual sua idade? " idade
read -p "E seu endereço, qual é? " endereco
read -p "ÓTIMO! Agora preciso do seu telefone: " telefone
read -p "Qual seu nível de escolaridade, por favor? " escolaridade
read -p "Sua profissão: " profissao

echo "Vi que seu nome completo é: $nome_completo, não sei mas tenho a impressão que
te conheço de algum lugar viu..."
echo "Sua idade é: $idade - hmm você é bem novo(a) hein, legal!"
echo "Seu endereço: $endereco - Tenho um amigo que mora aí pertinho de você"
echo "Seu telefone é: $telefone, incrível você é uma dessas pessoas que telefona para os outros?"
echo "Sua escolaridade: $escolaridade, legal, legal... ;)"
echo "Profissão: $profissao, eita... que interessante!"

read -p "Uma última coisa, você confirma que seus dados estão corretos? [S/N] " confirmacao

if [[ "$confirmacao" = "S" ]]; then
  echo "Dados cadastrados, muito obrigado!"
  exit 0
else
  exit 1
fi


