#!/bin/sh
echo "Configurando ambiente para rodar rails,apenas aguarde..."
#atualiza o ambiente...
echo "Atualizando ambiente..."
sudo apt-get update

#instalando curl para baixar o rvm...
echo "Instalando o curl..."
sudo apt-get install curl

#instalando o rvm...
echo "Instalando rvm..."
\curl -L https://get.rvm.io | bash -s stable

#inicializando rvm...
echo "inicializando rvm..."
source ~/.rvm/scripts/rvm

#Verificando e instalando as dependências da rvm...
echo "Verificando e instalando as dependências da rvm"
rvm requirements

#Instalando ruby...
echo "Instalando Ruby"
rvm install ruby

#Verificando e instalando as dependências para instalar o rails...
echo "Verificando e instalando as dependências para instalar o rails..."
rvm rubygems current 

#Instalando framework Ruby on Rails
echo "Instalando framework Ruby on Rails"
gem install rails

#Instalando dependencia da gem mysql2 para rodar mysql com rails
echo "Instalando dependencia da gem mysql2 para rodar mysql com rails"
sudo apt-get install mysql-server mysql-client libmysqlclient-dev

# Instalando NodeJS dependencia do rails
echo "Instalando NodejS"
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

#Instalando biblioteca para a gem rmagic + carrierwave(upload de arquivos) funcionar
echo "Instalando biblioteca para a gem rmagic(upload de arquivos) funcionar"
sudo apt-get install libmagickwand-dev

#Instalando Go Language
echo "Instalando biblioteca para a gem zeus(inicializador de server mais rapido que web rick) funcionar"
sudo apt-get install python-software-properties 
sudo add-apt-repository ppa:duh/golang
sudo apt-get update
sudo apt-get install golang
ulimit -v 242000