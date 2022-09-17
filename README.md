# Modelagem: Conceitual | Lógica | Física

### Projeto banco de dados - Desenvolvido para uma empresa que trabalha com fabricação e alocação de reboques para veículos.
A necessidade de implementação de um banco de dados, surgiu do interesse da empresa
em fazer o controle de dados, como, datas e horários das alocações. 
Quando um reboque da empresa recebia uma infração, ocasionada por um
cliente, a empresa perdia muito tempo conferindo documentos feitos à mão, com a finalidade de descobrir qual, entre vários de seus clientes, possivelmente, estaria em posse do reboque, no intervalo de dia e hora da autuação. Com a implementação do banco de dados, a empresa simplesmente consulta as informações desejadas no sistema. A implementação do projeto foi feita utilizando banco de dados **Mysql**. 

### Relacionamentos e organização das informações
As informações foram divididas em 3 tabelas que se relacionam entre si por meio do campo `id`, presente na tabela principal nomeada de **Cliente**. O código do cliente é o `id` da tabela **Cliente**.

<br>
<p align="center">
  <img src="https://github.com/Mat3usCod3/Modelagem-Conceitual-Logica-Fisica/blob/main/Flowchart2.png?raw=true" width="350" height="280" />
</p>
</br>

### Informações existentes em cada tabela


+ **Cliente** 🙎‍♂️

Informações pessoais do cliente: Nome, registro geral, cpf, numero habilitação.

+ **Endereço-Cliente** 🏡

Informações sobre o endereço do cliente: Rua, bairro, cidade, estado.

+ **Fato-Alocação** 🕘

Informações sobre à alocação: Data e hora da alocação, data e hora da entrega, reboque utilizado.


