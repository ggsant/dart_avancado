# Maps e Lists 

A variável, por definição, só nos permite colocar um valor dentro dela, porém há situações em que queremos um tipo de variável mais flexível que contenha mais valores.


**LISTAS**

É um conjunto de valores organizados e com uma ordem, por exemplo [7, 1, 2, 3], para cada número há um índice, ou seja, o número 7 equivale ao índice 0, o número 1 ao índice 1 e assim por diante. O índice é como se fosse uma fila, então o primeiro ítem sempre equivalerá ao indice 0 e assim por diante. 

Os índices podem conter número ou nomes.

Em outras linguagens a lista ou list é chamada de array, já em Dart, chama-se list.

**MAPAS**

Séra mais flexível do que as listas, é uma espécie de dicionário. Mas como assim um dicionário? Bem, em um dicionário de um lado há o nome e de outro o significado. Mapas são tratados da mesma forma (um par de chave-valor, key-value). ex. {"id":"0", "nome":"diego"} a chave seria o "id" e o valor "0".

**COMO CRIAR COLEÇÕES EM DART**

**Criando Listas**

Para criar uma lista iremos criar uma variável + nome e após a lista de dados que queremos que ela contenha:

                    main () {
                        var lista = [11, 22, 33, "Oi"];
                        print(lista);
                    }

Para podermos acessar algum dado específico da lista nós colocamos o index dentro desta forma print(lista[0]); que irá nos retornar o primeiro ítem da lista que é "11".

Toda lista tem um tamanho que seria a quantidade de ítens presentes na lista, na lista que criamos tem 4 ítens, em dart chamamos de lenght. Para retornar o tamanho da lista nós fazemos da sequinte forma:

                    main () {
                        var lista = [11, 22, 33, "Oi"];
                        print(lista.length);
                    }

Podemos também retirar ítem por item utilizando o for:

                    main () {

                        var lista = [11, 22, 33, 44];

                        for (var i =0; i lista.length; i++){
                            print ("Índice $i contém ${lista[i]}");
                        }
                    }

O resultado do print acima será: 

                    Índice 0 contém 11
                    Índice 1 contém 22
                    Índice 2 contém 33
                    Índice 3 contém 44

Para saber qual será o último ítem de nossa lista podemos utilizar o length - 1, pois a contagem do índice da lista começa por 0, vejamos:

                    main () {
                        var lista = [11, 22, 33, 44];
                        print(lista[lista.length - 1]);
                    }

O resultado será 44.

Há também outra forma de criar uma lista var lista = List(); e se eu quiser colocar o tipo de lista basta colocar o tipo, no caso, String: var lista = List(); 

Para adicionar os elementos nesta lista nos devemos adicionar o método add:

                    main() {
                        var lista = List();
                        lista.add("Oi");
                        lista.add("Tchau");
                        print(lista);
                    }

OBS. Em Dart na versão 2.0 não precisa mais colocar o new, na verdade será opcional.

**Criando Maps**

Ao contrário das listas que começam com [] os mapas começam com {}. Para definir um mapa devemos:

                    main() {
                        var jogadores = {
                            "primeiro": "Ronaldo",
                            "segundo": "Diego",
                            "terceiro": "Paulo",
                        };

                        print(jogadores["primeiro"]);
                    }

Caso queiramos interar utilizando o for para retirar os objetos do mapa, fazemos utilizando o forEach:

                    main () {
                        var jogadores = {
                            "primeiro":"Ronaldo",
                            "segundo":"Diego",
                            "terceiro":"Paulo",
                        };
                        
                        jogadores.forEach(
                            (c, v) => print(c)
                        );
                    }

O forEach traz em sua fórmula o (String, String) onde o primeiro será a chave key e o segundo o valor value. No caso acima, iremos printar somente as chaves: primeiro, segundo e terceiro. Caso você queira mostrar só as chaves você pode utilizar o termo keys ou values, vejamos:

                    main() {
                        var jogadores = {
                            "primeiro": "Ronaldo",
                            "segundo": "Diego",
                            "terceiro": "Paulo",
                        };

                        var chaves = jogadores.keys;
                        print(chaves);
                    }

Irá retornar: (primeiro, segundo, terceiro). Da mesma forma ocorrerá se colocarmos values.

**Referências - Flutter Brasil**