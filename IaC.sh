echo  " Criando Infraestrutura... "

echo  " Criando pastas"
mkdir /publico
echo  " Diretório/público criado "
mkdir /adm
echo  " Diretório/adm criado "
mkdir /ven
echo  " Diretório/mesmo criado "
mkdir /s
echo  " Diretório/sec criado "

echo  "Criando grupos"
groupadd GRP_ADM
echo  " Grupo GRP_ADM criado "
agrupar adicionar GRP_VEN
echo  " Grupo GRP_VEN criado "
groupadd GRP_SEC
echo  " Grupo GRP_SEC criado "

echo  "Criando usuários"
useradd carlos -m -c " Carlos " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_ADM
echo  " Usuário carlos criado "
passwd carlos -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd maria -m -c " Maria " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_ADM
echo  " Usuário maria criado "
senha maria -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd joao -m -c " João " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_ADM
echo  " Usuário carlos criado "
passwd joao -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd debora -m -c " Debora " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_VEN
echo  " Usuário debora criado "
passwd debora -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd sebastiana -m -c " Sebastiana " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_VEN
echo  " Usuário sebastiana criado "
senha sebastiana -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd roberto -m -c " Roberto " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_VEN
echo  " Usuário Roberto criado "
passwd roberto -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd josefina -m -c " Josefina " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_SEC
echo  " Usuário josefina criado "
senha josefina -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd amanda -m -c " Amanda " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_SEC
echo  " Usuário amanda criado "
senha amanda -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "
useradd rogerio -m -c " Rogério " -s /bin/bash -p $( openssl passwd senha123 ) -G GRP_SEC
echo  " Usuário Rogerio criado "
passwd rogerio -e
echo  " Senha padrão: senha123 "
echo  " Quando logar será necessário criar nova senha "

echo  " Usuários adicionados ao grupo GRP_ADM: carlos maria joao "
echo  " Usuários adicionados ao grupo GRP_VEN: debora sebastiana roberto "
echo  " Usuários adicionados ao grupo GRP_ADM: josefina amanda rogerio "

echo  "Alteração dos grupos de pastas"
chown root: GRP_ADM /adm
echo  " Diretório /adm recebe grupo GRP_ADM "
chown root: GRP_VEN /ven
echo  " Diretório /ven recebe grupo GRP_VEN "
chown root: GRP_SEC /s
echo  " Diretório /sec recebe grupo GRP_SEC "

echo  "Alternando permissões"
chmod 777 /publico
echo  " Permissões de/alterações públicas "
chmod 770 /adm
echo  " Permissões de /adm alterações "
chmod 770 /ven
echo  " Permissões de/até mesmo alterações "
chmod 770 /s
echo  " Permissões de /sec alteradas "

echo  " IaC Finalizado... "