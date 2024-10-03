#! /bin/bash

echo "Criando Usuários"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) 
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123)
useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123)
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd Senha123)


echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Diretórios"

cd /
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Definindo os grupos de cada usuário"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Definindo os acessos as pastas de acordo com o grupo"

cd /
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissões das pastas"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico  

echo "Fim"
