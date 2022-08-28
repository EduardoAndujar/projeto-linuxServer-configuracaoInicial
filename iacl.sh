#!/bin/bash

echo "----------Criando diretórios----------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "----------Crando grupo de usuários!----------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "----------Criando usuários!----------"

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -c "Carlos da Silva" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -c "Maria Nascimento" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -c "João Carlos" -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -c "Debora dos Santos" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -c "Sebastiana de Lurdes" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -c "Roberto Juarez" -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -c "Josefina Pedroso" -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -c "Amanda Júnior" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -c "Rogério Almeida" -G GRP_SEC

echo "----------Atribuindo permissões dos diretórios----------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Configurações finalizadas!!!!!"
 
