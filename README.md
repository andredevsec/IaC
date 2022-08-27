# IaC
Projeto de criação e gerenciamento de usuários no sistema Ubuntu Server realizado no Bootcamp Linux Experience pela DIO.me

Infraestrutura como código:
Script de criação de estrutura de 
usuários, diretórios e permissões.

O que é?
Infraestrutura como código (IaC) é o gerenciamento e provisionamento 
da infraestrutura por meio de códigos, em vez de processos manuais.
Com a IaC, são criados arquivos de configuração que incluem as 
especificações da sua infraestrutura, facilitando a edição e a 
distribuição de configurações. Ela também assegura o 
provisionamento do mesmo ambiente todas as vezes. 

Controle de versão
O controle de versão é uma parte importante da IaC. Os arquivos de 
configuração devem pertencer à fonte como qualquer outro 
código-fonte de software. Ao implantar a infraestrutura como código, 
também é possível separá-la em módulos, que podem ser combinados 
de diferentes maneiras por meio da automaçã.

Principal benefício
Ao automatizar o provisionamento da infraestrutura com a IaC, os 
desenvolvedores não precisam provisionar e gerenciar manualmente 
servidores, sistemas operacionais, armazenamento e outros 
componentes de infraestrutura sempre que criam ou implantam uma 
aplicação.


![image](https://user-images.githubusercontent.com/84422477/187050389-96db9f75-acb2-4de3-b8f3-428d77524a38.png)

Definições

● Excluir diretórios, arquivos, grupos e usuários criados anteriormente;

● Todo provisionamento deve ser feito em um arquivo do tipo Bash 
Script;

● O dono de todos os diretórios criados será o usuário root;

● Todos os usuários terão permissão total dentro do diretório publico;

● Os usuários de cada grupo terão permissão total dentro de seu 
respectivo diretório;

● Os usuários não poderão ter permissão de leitura, escrita e execução 
em diretórios de departamentos que eles não pertencem;




