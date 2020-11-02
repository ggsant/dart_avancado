# Teoria

# Operadores

Obter dados é apenas uma parte do processamento realizado em um programa. As decisões sobre o que fazer com os dados dependem de avaliações ou expressões. **Uma expressão envolve os dados e algum tipo de operador que define um resultado.** Vamos conhecer os tipos de operadores suportados pela linguagem Dart.

**Operadores aritméticos**

Para realizar operações matemáticas utilizamos operadores aritméticos.

**Soma (+), Subtração (-), inversão (-expr.), Multiplicação (*), Divisão (/), Divisão que retorna apenas a parte inteira (~/), módudo ou resto da divisão (%)**

**Operadores de incremento e decremento**

Para realizar contagens em ordem crescente utilizamos operadores de incremento e para contagens em ordem decrescente utilizamos operadores de decremento.

* **++var**	aumenta o valor da variável em 1(var = var + 1) antes de retornar seu valor
* **var++**	retorna o valor da variável e depois aumenta seu valor em 1 (var = var + 1)
* **--var**	diminui o valor da variável em 1 (var = var - 1) antes de retornar seu valor
* **var--**	retorna o valor da variável e depois diminui seu valor em 1 (var = var - 1)

**Operadores relacionais**

Para realizar comparações de igualdade e diferença, e também de tamanho e quantidade entre valores utilizamos operadores relacionais.
* (==)   	Verifica a igualdade entre valores
* (!=)   	Verifica a desigualdade entre valores
* (>)	    Verifica se um valor é maior que outro
* (<)	    Verifica se um valor é menor que outro
* (>=)   	Verifica se um valor é maior ou igual que outro
* (<=)   	Verifica se um valor é menor ou igual que outro

Os operadores relacionais verificam os valores e retornam um valor lógico: **true ou false.**

**Operadores de teste de tipo**

Podemos avaliar o tipo de dado de um valor com operadores de teste de tipo.

* **as** -> Converte de um subtipo válido para um tipo. Ex.: converter de int para num.
* **is** ->	Verifica se o valor é de um determinado tipo
* **is!** -> Verifica se o valor não é de um determinado tipo

**Operadores de atribuição**

Para atribuir valor a uma variável ou a um objeto utilizamos operadores de atribuição. 
* **=** -> Atribui valor a uma variável
* **??=** -> Se a variável for nula atribui o valor, senão mantém o valor anterior

O operador de atribuição = também pode ser combinado com outros operadores.

Por exemplo, ao combinar os operadores += nos atribuímos a soma do valor atual de uma variável com um outro valor.Outros operadores podem ser combinados com o operador de atribuição: 

* -=	Atribui a subtração entre o valor atual e outro valor
* /=	Atribui a divisão entre o valor atual e outro valor
* %=	Atribui o módulo entre o valor atual e outro valor
* +=	Atribui a soma entre o valor atual e outro valor
* *=	Atribui a multiplicação entre o valor atual e outro valor
* ~/=	Atribui a divisão com resultado inteiro entre o valor atual e outro valor

*Operadores lógicos*

Esses operadores são utilizados com **valores booleanos**, tais como true e false. Com eles podemos comparar se dois booleanos são iguais, diferentes ou inverter seus valores, transformando true em false e vice versa.

* **!** -> Inverte um valor lógico. Se ele for true passa a ser false e se for false passa a ser true.
* **||** ->	Realiza a operação lógica OU entre dois booleanos.
* **&&** ->	Realiza a operação lógica E entre dois booleanos.

**Operadores condicionais**

Em Dart temos operadores para criar expressões condicionais semelhantes a estrutura condicional **if-then-else**. Para criar essas expressões seguimos a sintaxe abaixo:

            condição ? expressão1 : expressão2

Se a condição for verdadeira retorna o resultado da expressão1, senão retorna o resultado da expressao2.

Existe outra opção de sintaxe: 

                    expressao1 ?? expressao2
                    
Se expressao1 não for nulo retorna um valor, senão passa para a expressao2 e retorna outro valor.
