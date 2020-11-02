
# Teoria

# Strings

Mesmo em programas mais simples é comum encontrarmos códigos para **manipular cadeias de caracteres**. Contar caracteres, extrair parte de uma cadeia de caracteres, são apenas alguns tipos de manipulação de strings.

A linguagem Dart possui a classe String que tem propriedades e métodos que implementam muitas ações envolvendo strings como as mencionadas acima e as veremos na prática a seguir.

**Strings são imutáveis**

Antes de falar sobre a classe String é preciso entender um conceito importante do tipo de dado string. *É uma coleção de caracteres que é imutável, por isso quando manipulamos uma string não alteramos a string original, mas criamos uma nova string*.

Por exemplo se convertemos todos caracteres de uma string para maiúsculo, essa string não vai mudar, mas geramos uma **nova string** com caracteres maiúsculos que poderá ser armazenada em uma variável ou constante.

**Quando manipulamos strings com métodos da classe String criamos novas strings.**

# Propriedades da classe String

São sete as propriedades mais utilizadas da classe String: **codeUnits, hashCode, isEmpty, isNotEmpty, length, runes e runtimeType**. Veremos cada uma a seguir através de exemplos práticos.

**codeUnits**

Essa propriedade retorna uma lista imutável das unidades de código UTF-16 de uma string, como mostra o exemplo:

              String nome = 'Renato';
              print(nome.codeUnits);

              saida: [82, 101, 110, 97, 116, 111]

**hashCode**

Essa propriedade retorna um hashcode gerado a partir das unidades de código UTF-16 de uma string, como mostra o exemplo: 

              String mes = 'Janeiro';
              print(mes.hashCode);

              saida: 646383925

**O que é hashcode? O código Hash é uma sequência numérica gerada por um algoritmo para identificação de um objeto**

**isEmpty**

A propriedade isEmpty retorna true se uma string tem valor vazio, assim como no exemplo:

              String vazia = '';
              print(vazia.isEmpty);

              saida: true

**isNotEmpty**

A propriedade isNotEmpty retorna true se uma string tem um valor que não é vazio:

              String naoVazia = 'olá';
              print(naoVazia.isNotEmpty);

**length**

Na Listagem 5 temos um exemplo de uso da propriedade length, que retorna o número de unidades de código UTF-16 de uma string.

              var tamanhoDaString = 'Polígono'.length;
              print(tamanhoDaString);

**runes**

Uma runa é um número inteiro que representa **uma unidade de código UTF-16** . Por exemplo o sinal de música **♭** é representado pela string **\u266D**. O número inteiro 9837 é a sua runa.

Esse número inteiro pode ser utilizado para representar esse caractere em uma página HTML por colocar o prefixo &# e adicionar ; no final.

A propriedade runes retorna as runas em uma string e runes.length o número de runas em uma string.

A quantidade de runas de uma string UTF-16 pode ser menor se conter caracteres que não fazem parte do plano multilíngue básico.

Veja um exemplo de uso da propriedade runes :

              // string UTF-16 que representa
              // o emoji de lágrimas de alegria
              var lagrimasDeAlegria = '\u{1F602}';
              print(lagrimasDeAlegria.runes); // retorna (128514)
              print(lagrimasDeAlegria.runes.length); // retorna 1

**runTimeType**

retorna o tipo de dado de um objeto em **tempo de execução**.

              String cidade = 'Juazeiro';
              print(cidade.runtimeType);

              saida: String

# Índice de strings

Antes de passar para os métodos da classe String é importante entender o conceito de índice de strings, que será utilizado em vários métodos.

**Uma string é uma coleção de caracteres, e cada um deles ocupa uma posição nessa coleção. A primeira posição equivale ao índice 0, a segunda posição é o índice 1, e assim por diante.**

* Para acessar um caractere dentro da string usamos o operador [ ], passando para o ele o endereço em que o caractere está.

Por exemplo, sabendo que o valor da string forma é "Triângulo", para acessar o caractere "g" usamos a sintaxe forma[5], pois o caractere "g" está na posição 5 da string.

                var forma = 'Triângulo';
                print(forma[5]); // g

A classe String utiliza muito os índices para localizar e substituir trechos de strings.

# Métodos da classe String

A classe String também possui métodos importantes que vamos conhecer agora.

**compareTo**

O método compareTo compara sua string com outra string. Esse método **retorna um número inteiro**. Se a string for anterior a outra string, pela ordem alfabética, o método **retorna um inteiro negativo** e caso contrário **retorna um inteiro positivo.** E se as duas strings forem iguais **retorna 0**.

O método compareTo é case sensitive, quer dizer que **diferencia letras minúsculas e maiúsculas**.

Veja um exemplo de uso do método compareTo

                  var palavra = 'casa';
                  print(palavra.compareTo('CASA'));
                  saida: 1

**contains**

O método contains recebe dois parâmetros: **primeiro uma string e segundo um inteiro que é o índice inicial, que se não for informado será atribuído 0 como padrão.** Esse método procura pela string que foi informada como parâmetro a partir do índice informado. Se a string for encontrada **retorna o valor lógico true e senão false**, como mostra o exemplo:

                  var nomeInformado = 'Ferdinando';
                  print(nomeInformado.contains('nando',5));

**startsWith**

O método startsWith recebe os mesmos dois parâmetros que o método contains: **uma string para procurar e um inteiro que é um índice.** Se o parâmetro índice for passado, o método procura a string na posição do índice e se não for informado o índice procura a string no índice 0. Se a string for encontrada o método retorna o valor lógico true e senão false, como no exemplo:

                  var imperador = 'Julius Cesar';
                  print(imperador.startsWith('Julius'));

**endsWith**

O método endsWith recebe uma **string como parâmetro.** O método retorna o valor lógico true se encontrar do **parâmetro no final da string.**

                  var filme = 'Jornada nas estrelas';
                  print(filme.endsWith('estrelas'));

**substring**

Abaixo temos um exemplo em que o método substring retorna a parte de uma string de acordo com dois parâmetros que são o **índice inicial e o índice final**. O índice inicial é o do primeiro caractere da parte da string, o índice final é posterior ao último caractere da parte da string.

                  var poligono = 'quadrado';
                  print(poligono.substring(0,6));

**replaceAll**

O método replaceAll recebe **duas strings como parâmetros: a primeira string que deve ser localizada e a segunda string que deve substituir toda ocorrência da primeira.** O método retorna uma nova string com as substituições feitas.

Veja um exemplo de uso do método replaceAll 

                  var frase = 'não vou lutar e não vou vencer';
                  print(frase.replaceAll('não', ''));
                  saida: vou lutar e vou vencer

**replaceFirst**

O método replaceFirst **recebe duas strings como parâmetros: a primeira string que deve ser localizada e a segunda string que deve substituir a primeira ocorrência da primeira.** Esse método retorna uma nova string com a substituição feita.

Existe um terceiro parâmetro que é um inteiro usado como índice. Se esse parâmetro não for informado o método assume o valor 0 que corresponde ao índice 0 no início da string.

A primeira string será procurada a partir do índice.
Veja um exemplo de uso do método replaceFirst

            var outraFrase = 'a palavra é prata, o silêncio é ouro';
            print(outraFrase.replaceFirst('é', 'já foi'));
            saida: a palavra já foi prata, o silêncio é ouro

**replaceRange**

O método replaceRange tem três parâmetros: um inteiro que é o índice inicial, um inteiro que é um índice final, e uma string que substituirá a string delimitada pelos dois índices.

Veja um exemplo de uso do método replaceRange:

            var frase2 = 'em terra de cego quem tem um olho é rei';
            print(frase2.replaceRange(0, 16, 'na selva'));
            saida: na selva quem tem um olho é rei

**toUpperCase**

O método toUpperCase converte todos caracteres de uma string para caracteres maiúsculos retornados em uma nova string.

Veja um exemplo de uso do método toUpperCase 

            var nomeEmMinusculo = 'joão';
            print(nomeEmMinusculo.toUpperCase());

**toLowerCase**

O método toLowerCase converte todos caracteres de uma string para caracteres minúsculos retornados em uma nova string.

            var nomeEmMaiusculo = 'ANTONIO';
            print(nomeEmMaiusculo.toLowerCase());

**trim**

O método trim remove espaços à esquerda e à direita da string, se houver, e retorna em uma nova string.

            var stringComEspacos = ' speed ';
            print(stringComEspacos.trim());

# Operadores da classe String

A classe String possui também alguns operadores para manipulação de strings, como veremos a seguir.

**Operador (*)**

Esse operador recebe como parâmetro um número inteiro. Ele vai concatenar a string com ela mesma pela quantidade de vezes que for informada no parâmetro:

            var paraMultiplicar = ' matrix';
            print(paraMultiplicar*(5));

**Operador (+)**

O operador + recebe como parâmetro outra string e concatena a string original com a string do parâmetro retornando em uma nova string. Logo em seguida encontramos a saída no prompt de comando.

            var paraConcatenar = 'um';
            print(paraConcatenar+(' dois'));

**Operador []**

O operador [] recebe um inteiro como parâmetro e retorna o caractere que corresponde ao índice do inteiro informado.

            var caracteresEIndices = 'performance';
            print(caracteresEIndices[3]);

