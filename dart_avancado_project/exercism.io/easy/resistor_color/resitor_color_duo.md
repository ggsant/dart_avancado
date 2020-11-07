# Resistor Color Duo

**Introdução**

Se você quiser construir algo usando um Raspberry Pi, provavelmente usará resistores . Para este exercício, você precisa saber duas coisas sobre eles:

* Cada resistor tem um valor de resistência.
* Os resistores são pequenos - tão pequenos que, se você imprimisse o valor da resistência neles, seria difícil de ler. Para contornar esse problema, os fabricantes imprimem faixas codificadas por cores nos resistores para denotar seus valores de resistência. Cada banda possui uma posição e um valor numérico. Por exemplo, se eles imprimissem uma faixa marrom (valor 1) seguida por uma faixa verde (valor 5), isso se traduziria no número 15.

Neste exercício, você criará um programa útil para não precisar se lembrar dos valores das bandas. O programa pegará nomes de cores como entrada e produzirá um número de dois dígitos, mesmo se a entrada tiver mais de duas cores!

As cores da banda são codificadas da seguinte forma:

                            Preto: 0
                            Marrom: 1
                            Vermelho 2
                            Laranja: 3
                            Amarelo: 4
                            Verde: 5
                            Azul: 6
                            Violeta: 7
                            Cinza: 8
                            Branco: 9

Do exemplo acima: marrom-verde deve retornar 15 marrom-verde-violeta deve retornar 15 também, ignorando a terceira cor.

Para executar os testes:

                        $ pub run test

Para obter informações mais detalhadas sobre a pista de Dart, consulte as páginas de instalação e teste .

Fonte
Maud de Vries, Erik Schierboom https://github.com/exercism/problem-specifications/issues/1464

Envio de soluções incompletas

É possível enviar uma solução incompleta para que você possa ver como outras pessoas concluíram o exercício.