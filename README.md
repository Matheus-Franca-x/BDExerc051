# BDExerc051
---
## links:
### [exercicio 1](#exercício-1)

### [exercicio 2](#exercício-2)

### [exercicio 3](#exercício-3)

### [exercicio 4](#exercício-4)

### [exercicio 5](#exercício-5)

### [exercicio 6](#exercício-6)
---

## Exercício 1:

### Aluno:
|  RA(PK)   | Nome   | Sobrenome |           Rua          |  Nº  | Bairro	          |   CEP   | Telefone |
|   -   |    -   |     -     |            -           |   -  |        -         |    -    |     -    |
| 12345 |	José   | Silva     | Almirante Noronha	    | 236  | Jardim São Paulo | 1589000	| 69875287 |
| 12346	| Ana    | Maria     | Bastos	Anhaia	        | 1568 | Barra Funda	    | 3569000	| 25698526 |
| 12347	| Mario  | Santos	   | XV de Novembro	        | 1841 | Centro	          | 1020030	|          |
| 12348	| Marcia | Neves	   | Voluntários da Patria	| 225	 | Santana	        | 2785090 |	78964152 |

### Curso:
| Código(PK)	|Nome	|Carga Horária	|Turno|
| - | - | - | - |
|1	|Informática	|2800	|Tarde|
|2	|Informática	|2800	|Noite|
|3	|Logística	|2650	|Tarde|
|4	|Logística	|2650	|Noite|
|5	|Plásticos	|2500	|Tarde|
|6	|Plásticos	|2500	|Noite|

### Disciplina:
|Código(PK)	|Nome	|Carga Horária	|Turno |Semestre
|-|-|-|-|-
|1	|Informática	|4	|Tarde	|1
|2	|Informática	|4	|Noite	|1
|3	|Quimica	|4	|Tarde	|1
|4	|Quimica	|4	|Noite	|1
|5	|Banco de Dados I	|2	|Tarde	|3
|6	|Banco de Dados I	|2	|Noite	|3
|7	|Estrutura de Dados	|4	|Tarde	|4
|8	|Estrutura de Dados	|4	|Noite	|4

### Consultar:
1) Nome e sobrenome, como nome completo dos Alunos Matriculados.
2) Rua, nº , Bairro e CEP como Endereço do aluno que não tem telefone.
3) Telefone do aluno com RA 12348.
4) Nome e Turno dos cursos com 2800 horas.
5) O semestre do curso de Banco de Dados I noite.

## Exercício 2:

### Cliente:
|Nome	|Logradouro	|Nº	|Bairro	|Telefone	|Carro(PK)(FK)
|-|-|-|-|-|-
|João Alves|	R. Pereira Barreto|	1258	|Jd. Oliveiras|	2154-9658|	DXO9876
|Ana Maria|	R. 7 de Setembro|	259	|Centro|	9658-8541	|LKM7380
|Clara Oliveira|	Av. Nações Unidas|	10254	|Pinheiros|	2458-9658	|EGT4631
|José Simões|	R. XV de Novembro|	36	|Água Branca|	7895-2459	|BCD7521
|Paula Rocha|	R. Anhaia|	548	|Barra Funda|	6958-2548	|AFT9087

### Carro:
|Placa(PK)	|Marca	|Modelo	|Cor	|Ano
|-|-|-|-|-
|AFT9087|	VW	|Gol	|Preto	|2007
|DXO9876|	Ford	|Ka	|Azul	|2000
|EGT4631|	Renault|	Clio	|Verde	|2004
|LKM7380|	Fiat	|Palio	|Prata	|1997
|BCD7521|	Ford	|Fiesta	|Preto	|1999

### Peças:
|Código(PK)	|Nome	|Valor
|-|-|-
|1	|Vela	|70
|2	|Correia Dentada	|125
|3	|Trambulador	|90
|4	|Filtro de Ar	|30

### Serviços:
|Carro(PK)(FK)	|Peça(PK)(FK)	|Quantidade	|Valor	|Data(PK)
|-|-|-|-|-
DXO9876	|1	|4	|280	|01/08/2020
DXO9876	|4	|1	|30	|01/08/2020
EGT4631	|3	|1	|90	|02/08/2020
DXO9876	|2	|1	|125	|07/08/2020

## Consultar em Subqueries
1) Telefone do dono do carro Ka, Azul.
2) Endereço concatenado do cliente que fez o serviço do dia 02/08/2009 → corrigido para 02/08/2020.

## Consultar:
3) Placas dos carros de anos anteriores a 2001.
4) Marca, modelo e cor, concatenado dos carros posteriores a 2005.
5) Código e nome das peças que custam menos de R$80,00.

## Exercício 3:

### Paciente:
CPF(PK)	|Nome	|Rua	|N°	|Bairro	|Telefone	|Data_Nasc
-|-|-|-|-|-|-
35454562890	|José Rubens	|Campos Salles	|2750	|Centro	|21450998	|1954-10-18
29865439810	|Ana Claudia	|Sete de Setembro	|178	|Centro	|97382764	|1960-05-29
82176534800	|Marcos Aurélio	|Timóteo Penteado	|236	|Vila Galvão	|68172651	|1980-09-24
12386758770	|Maria Rita	|Castello Branco	|7765	|Vila Rosália	|NULL	|1975-03-30
92173458910	|Joana de Souza	|XV de Novembro	|298	|Centro	|21276578	|1944-04-24

### Medico:
Código(PK)	|Nome	|Especialidade
-|-|-
1	|Wilson Cesar	|Pediatra
2	|Marcia Matos	|Geriatra
3	|Carolina Oliveira	|Ortopedista
4	|Vinicius Araujo	|Clínico Geral

### Prontuário:
Data(PK)	|CPF Paciente(PK)(FK)	|Código Médico(PK)(FK)	|Diagnóstico	|Medicamento
-|-|-|-|-
2020-09-10	|35454562890	|2	|Reumatismo	|Celebra
2020-09-10	|92173458910	|2	|Renite Alérgica	|Allegra
2020-09-12	|29865439810	|1	|Inflamação de garganta	|Nimesulida
2020-09-13	|35454562890	|2	|H1N1	|Tamiflu
2020-09-15	|82176534800	|4	|Gripe	|Resprin
2020-09-15	|12386758770	|3	|Braço Quebrado	|Dorflex + Gesso

## Consultar:
1) Nome e Endereço (concatenado) dos pacientes com mais de 50 anos.
2) Qual a especialidade de Carolina Oliveira.
3) Qual medicamento receitado para reumatismo.


## Consultar em subqueries:
4) Diagnóstico e Medicamento do paciente José Rubens em suas consultas.
5) Nome e especialidade do(s) Médico(s) que atenderam José Rubens. Caso a especialidade tenha mais de 3 letras, mostrar apenas as 3 primeiras letras concatenada com um ponto final (.).
6) CPF (Com a máscara XXX.XXX.XXX-XX), Nome, Endereço completo (Rua, nº - Bairro), Telefone (Caso nulo, mostrar um traço (-)) dos pacientes do médico Vinicius.
7) Quantos dias fazem da consulta de Maria Rita até hoje.

## Alterar:
8) O telefone da paciente Maria Rita, para 98345621.
9) O Endereço de Joana de Souza para Voluntários da Pátria, 1980, Jd. Aeroporto.

## Exercício 4:

### Cliente:
CPF(PK)	|Nome	|Telefone
-|-|-
345789092-90	|Julio Cesar	|8273-6541
251865337-10	|Maria Antonia	|8765-2314
876273154-16	|Luiz Carlos	|6128-9012
791826398-00	|Paulo Cesar	|9076-5273

### Produto:
Código(PK)	|Descrição	|Fornecedor(FK)	|Preço
-|-|-|-
1	|Monitor 19 pol.	|1	|449.99
2	|Netbook 1GB Ram 4 Gb HD	|2	|699.99
3	|Gravador de DVD - Sata	|1	|99.99
4	|Leitor de CD	|1	|49.99
5	|Processador - Phenom X3 - 2.1GHz	|3	|349.99
6	|Mouse	|4	|19.99
7	|Teclado	|4	|25.99
8	|Placa de Video - Nvidia 9800 GTX - 256MB/256 bits|	5	|599.99

### Fornecedor:
ID(PK)	|Nome	|Logradouro	|N°	|Complemento	|Cidade
-|-|-|-|-|-
1	|LG	|Rod. Bandeirantes	|70000	|Km 70	|Itapeva
2	|Asus	|Av. Nações Unidas	|10206	|Sala 225	|São Paulo
3	|AMD	|Av. Nações Unidas	|10206	|Sala 1095	|São Paulo
4	|Leadership	|Av. Nações Unidas	|10206	|Sala 87	|São Paulo
5	|Inno	|Av. Nações Unidas	|10206	|Sala 34	|São Paulo

### Venda:
Código(PK)	|Produto(PK)(FK)	|Cliente(PK)(FK)	|Quantidade|	Valor total	|Data
-|-|-|-|-|-
1	|1	|251865337-10	|1	|449.99	|9/3/2009
1	|4	|251865337-10	|1	|49.99	|9/3/2009
1	|5	|251865337-10	|1	|349.99	|9/3/2009
2	|6	|791826398-00	|4	|79.96	|9/6/2009
3	|8	|876273154-16	|1	|599.99	|9/6/2009
3	|3	|876273154-16	|1	|99.99	|9/6/2009
3	|7	|876273154-16	|1	|25.99	|9/6/2009
4	|2	|345789092-90	|2	|1399.98	|9/8/2009
	
## Inserir na tabela Fornecedor, a coluna Telefone e os seguintes dados:	
id | telefone
-|-
1	|7216-5371
2	|8715-3738
4	|3654-6289
	
## Consultar:	
1) No formato dd/mm/aaaa da data da Venda 4.
2) Por ordem alfabética de nome, o nome, o enderço concatenado e o telefone dos fornecedores.
3) Produto, quantidade e valor total do comprado por Julio Cesar.
4) Data, no formato dd/mm/aaaa e valor total do produto comprado por  Paulo Cesar.
5) Consultar, em ordem decrescente, o nome e o preço de todos os produtos.

## Exercício 5:

### Produto:
Codigo(PK)	|Nome	|Valor_Unitário	|Quantidade_Estoque	|Descrição	|Código_Fornecedor(FK)
-|-|-|-|-|-
1	|Banco Imobiliário	|65.00	|15	|Versão Super Luxo	|1001
2	|Puzzle 5000 peças	|50.00	|5	|Mapas Mundo	|1005
3	|Faqueiro	|350.00	|0	|120 peças	|1004
4	|Jogo para churrasco	|75.00	|3	|7 peças	|1004
5	|Tablet	|750.00	|29	|Tablet	|1003
6	|Detetive	|49.00	|0	|Nova Versão do Jogo	|1001
7	|Chocolate com Paçoquinha	|6.00	|0	|Barra	|1002
8	|Galak	|5.00	|65	|Barra	|1002

### Fornecedores:
Código(PK)	|Nome	|Atividade	|Telefone
-|-|-|-
1001	|Estrela	|Brinquedo	|41525898
1002	|Lacta	|Chocolate	|42698596
1003	|Asus	|Informática	|52014596
1004	|Tramontina	|Utensílios Domésticos	|50563985
1005	|Grow	|Brinquedos	|47896325
1006	|Mattel	|Bonecos	|59865898

### Cliente:
Código(PK)	|Nome	|Logradouro	|Numero	|Telefone	|Data_Nasc
-|-|-|-|-|-
33601	|Maria Clara	|R. 1° de Abril	|870	|96325874	|2000-08-15
33602	|Alberto Souza	|R. XV de Novembro	|987	|95873625	|1985-02-02
33603	|Sonia Silva	|R. Voluntários da Pátria	|1151	|75418596	|1957-08-23
33604	|José Sobrinho	|Av. Paulista	|250	|85236547	|1986-12-09
33605	|Carlos Camargo	|Av. Tiquatira	|9652	|75896325	|1971-03-25

### Pedido:
Código(PK)	|Código_Cliente(PK)(FK)	|Código_Produto(PK)(FK)	|Quantidade	|Previsão_Entrega
-|-|-|-|-
99001	|33601	|1	|1	|2012-06-07
99001	|33601	|2	|1	|2012-06-07
99001	|33601	|8	|3	|2012-06-07
99002	|33602	|2	|1	|2012-06-09
99002	|33602	|4	|3	|2012-06-09
99003	|33605	|5	|1	|2012-06-15

## Alterar:
1) Alterar para reduzir em 10% o valor das barras de chocolate.
2) Alterar a quantidade em estoque do faqueiro para 10 peças.

## Consultar:
3) A quantidade, valor total e valor total com desconto (25%) dos itens comprados par Maria Clara.
4) Verificar quais brinquedos não tem itens em estoque.
5) Quantos clientes tem mais de 40 anos.
6) Nome e telefone dos fornecedores de Brinquedos e Chocolate.
7) Nome e desconto de 25% no preço dos produtos que custam menos de R$50,00.
8) Nome e aumento de 10% no preço dos produtos que custam mais de R$100,00.
9) Desconto de 15% no valor total de cada produto da venda 99001.
10) Código do pedido, nome do cliente e idade atual do cliente.


## Exercício 6:

### Motorista:
Código(PK)	|Nome	|Data_nascimento	|Naturalidade
-|-|-|-
12341	|Julio Cesar	|1978-04-18	|São Paulo
12342	|Mario Carmo	|2002-07-29	|Americana
12343	|Lucio Castro	|1969-12-01	|Campinas
12344	|André Figueiredo	|1999-05-14	|São Paulo
12345	|Luiz Carlos	|2001-01-09	|São Paulo

### Ônibus:
Placa(PK)	|Marca	|Ano	|Descrição
-|-|-|-
adf0965   	|Mercedes            	|1999	|Leito               
bhg7654   	|Mercedes            	|2002	|Sem Banheiro        
dtr2093   	|Mercedes            	|2001	|Ar Condicionado     
gui7625   	|Volvo               	|2001	|Ar Condicionado     

### Viagem:
Código(PK)	|ônibus(FK)	|Motorista(FK)	|Hora de Saída	|Hora de Chegada	|Destino
-|-|-|-|-|-
101	|adf0965   	|12343	|10h	|12h	|Campinas
102	|gui7625   	|12341	|7h	|12h	|Araraquara
103	|bhg7654   	|12345	|14h	|22h	|Rio de Janeiro
104	|dtr2093   	|12344	|18h	|21h	|Sorocaba

## Consultar:
1) Da tabela viagem, todas as horas de chegada e saída, convertidas em formato HH:mm (108) e seus destinos.
2) Com subquery, o nome do motorista que viaja para Sorocaba.
3) Com subquery, a descrição do ônibus que vai para o Rio de Janeiro.
4) Com Subquery, a descrição, a marca e o ano do ônibus dirigido por Luiz Carlos.
5) O nome, a idade e a naturalidade dos motoristas com mais de 30 anos.
