#!/bin/bash

echo "Criando diretórios..."

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários e adicionando aos grupos..."

useradd carlos -c "Carlos Ribeiro" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria da Rosa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João de Deus" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora Mota" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Amaral" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Andrade" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Raimunda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Vieira" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Farias" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm/
chown root:GRP_SEC /sec/
chown root:GRP_VEN /ven/

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Well Done! xD"


