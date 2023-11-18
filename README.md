# BDExerc051

## Exercício 1:

### Aluno:
|  RA   | Nome   | Sobrenome |           Rua          |  Nº  | Bairro	          |   CEP   | Telefone |
|   -   |    -   |     -     |            -           |   -  |        -         |    -    |     -    |
| 12345 |	José   | Silva     | Almirante Noronha	    | 236  | Jardim São Paulo | 1589000	| 69875287 |
| 12346	| Ana    | Maria     | Bastos	Anhaia	        | 1568 | Barra Funda	    | 3569000	| 25698526 |
| 12347	| Mario  | Santos	   | XV de Novembro	        | 1841 | Centro	          | 1020030	|          |
| 12348	| Marcia | Neves	   | Voluntários da Patria	| 225	 | Santana	        | 2785090 |	78964152 |

### Curso:
| Código	|Nome	|Carga Horária	|Turno|
| - | - | - | - |
|1	|Informática	|2800	|Tarde|
|2	|Informática	|2800	|Noite|
|3	|Logística	|2650	|Tarde|
|4	|Logística	|2650	|Noite|
|5	|Plásticos	|2500	|Tarde|
|6	|Plásticos	|2500	|Noite|

### Disciplina:
|Código	|Nome	|Carga Horária	|Turno |Semestre
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
- Nome e sobrenome, como nome completo dos Alunos Matriculados
- Rua, nº , Bairro e CEP como Endereço do aluno que não tem telefone
- Telefone do aluno com RA 12348
- Nome e Turno dos cursos com 2800 horas
- O semestre do curso de Banco de Dados I noite

## Exercicio 2:

### Cliente:
|Nome	|Logradouro	|Nº	|Bairro	|Telefone	|Carro
|-|-|-|-|-|-
|João Alves|	R. Pereira Barreto|	1258	|Jd. Oliveiras|	2154-9658|	DXO9876
|Ana Maria|	R. 7 de Setembro|	259	|Centro|	9658-8541	|LKM7380
|Clara Oliveira|	Av. Nações Unidas|	10254	|Pinheiros|	2458-9658	|EGT4631
|José Simões|	R. XV de Novembro|	36	|Água Branca|	7895-2459	|BCD7521
|Paula Rocha|	R. Anhaia|	548	|Barra Funda|	6958-2548	|AFT9087

### Carro:
|Placa	|Marca	|Modelo	|Cor	|Ano
|-|-|-|-|-
|AFT9087|	VW	|Gol	|Preto	|2007
|DXO9876|	Ford	|Ka	|Azul	|2000
|EGT4631|	Renault|	Clio	|Verde	|2004
|LKM7380|	Fiat	|Palio	|Prata	|1997
|BCD7521|	Ford	|Fiesta	|Preto	|1999

### Peças:
|Código	|Nome	|Valor
|-|-|-
|1	|Vela	|70
|2	|Correia Dentada	|125
|3	|Trambulador	|90
|4	|Filtro de Ar	|30

### Serviços:
|Carro	|Peça	|Quantidade	|Valor	|Data
|-|-|-|-|-
DXO9876	|1	|4	|280	|01/08/2020
DXO9876	|4	|1	|30	|01/08/2020
EGT4631	|3	|1	|90	|02/08/2020
DXO9876	|2	|1	|125	|07/08/2020

## Consultar em Subqueries
- Telefone do dono do carro Ka, Azul
- Endereço concatenado do cliente que fez o serviço do dia 02/08/2009 → corrigido para 02/08/2020

## Consultar:
- Placas dos carros de anos anteriores a 2001
- Marca, modelo e cor, concatenado dos carros posteriores a 2005
- Código e nome das peças que custam menos de R$80,00

