# Váriaveis e constantes

Quando resolvemos um problema do mundo real com programação podemos representar cada dado do problema através de variáveis - essa é a forma de armazenar um valor na memória. Uma variável é como uma caixa onde colocamos um conteúdo para utilizar posteriormente.

O primeiro passo para utilizar variáveis e aprender como declará-las.

Declaração de variáveis
Para declarar uma variável com Dart obedecemos a seguinte sintaxe:

            [tipo de dado] [nome da variável] = [valor armazenado];

As variáveis possuem nome, tipo e valor. O nome de uma variável pode ser uma palavra iniciada com uma letra ou o caractere _. A linguagem possui algumas palavras que ela reserva para si e que não podem ser utilizadas como nomes de variáveis.

O tipo de uma variável é o que determina quais valores ela pode armazenar

**Inferência de tipo**

Outra maneira de declarar uma variável é usando a palavra var no lugar do tipo de dado e atribuir um valor a ela:

                        var nome = ‘Arthur’;

O tipo de dado será atribuído a variável de acordo com o valor que utilizarmos. No código da Listagem 2 o tipo de dado da variável nome é String dado que o texto Arthur foi utilizado como valor. Isso é o que chamamos de inferência de tipo.

**Tipos Object e dynamic**

Dart possui dois tipos de dados que permitem atribuir qualquer valor a uma variável, que são object e dynamic.

Utilizamos esses tipos quando não queremos limitar uma variável a armazenar valores de apenas um tipo de dado. 

                    dynamic conteudo = ‘qualquer coisa’;


**Valor padrão**

Quando declaramos uma variável e não atribuímos um valor, por padrão seu valor será nulo. Até variáveis com tipo numérico terão valor padrão nulo, porque tudo em Dart são objetos, inclusive números 

                    int numero; // o valor de numero é null

**Final e Const**

Quando queremos criar uma variável que não deve mudar seu valor, podemos declará-la como final ou const. Ambos definem variáveis como imutáveis, mas com algumas diferenças.

A palavra-chave final exige que a variável receba valor uma única vez, mas isso pode acontecer após a sua declaração. Portanto, quando só conhecemos o valor a ser atribuído em tempo de execução devemos usar final, pois dessa forma não é obrigatório informar um valor para a variável no momento em que ela for declarada.

Alguns casos em que só sabemos um valor em tempo de execução:

* A resposta de uma requisição http;
* Uma consulta a um banco de dados;
* A leitura de um arquivo.

                    final hoje = DateTime.now();

A palavra-chave const exige que seja dado um valor para a variável no momento em que ela é declarada. Do contrário será gerado um erro. Portanto, quando conhecemos o valor a ser atribuído em tempo de compilação devemos usar const.

                    const double metade = 10 / 2;

**Const para valores**

Podemos aplicar const também para valores. Uma situação peculiar é quando declaramos uma variável que não é const e atribuímos uma lista const. Embora não possa ser alterado podemos mudar o valor da variável para outra lista:

                    var lista = const [];
                    lista = [1,2,3];

**Const implícito**

Existem algumas situações em que não precisamos usar a palavra const porque está implícito.

Por exemplo, se declararmos uma variável como const todo valor que for atribuído também será, ou se temos uma coleção const todos seus membros também serão: 

                const numeros = [1,2,3,4]; // não use const antes de atribuir o valor, já está implícito
                
