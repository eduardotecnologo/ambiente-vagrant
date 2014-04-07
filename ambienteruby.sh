#!/bin/sh
echo "Configurando ambiente para rodar rails,apenas aguarde..."
#atualiza o ambiente...
echo "Atualizando ambiente..."
sudo apt-get update
clear

#instalando curl para baixar o rvm...
echo "Instalando o curl..."
sudo apt-get install curl
clear

#instalando o rvm...
echo "Instalando rvm..."
\curl -L https://get.rvm.io | bash -s stable
clear

#inicializando rvm...
echo "inicializando rvm..."
source ~/.rvm/scripts/rvm
clear

#Verificando e instalando as dependências da rvm...
echo "Verificando e instalando as dependências da rvm"
rvm requirements
clear

#Instalando ruby...
echo "Instalando Ruby"
rvm install ruby
clear

#Verificando e instalando as dependências para instalar o rails...
echo "Verificando e instalando as dependências para instalar o rails..."
rvm rubygems current 
clear

#Instalando framework Ruby on Rails
echo "Instalando framework Ruby on Rails"
gem install rails
clear
