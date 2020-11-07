# Pontuação Scrabble

**Introdução**

Dada uma palavra, calcule a pontuação do Scrabble para essa palavra.

**Valores de letras**

Você precisará destes:

                    Letter                           Value
                    A, E, I, O, U, L, N, R, S, T       1
                    D, G                               2
                    B, C, M, P                         3
                    F, H, V, W, Y                      4
                    K                                  5
                    J, X                               8
                    Q, Z                               10

**Exemplos**

"repolho" deve valer 14 pontos:

* 3 pontos para C
* 1 ponto para A, duas vezes
* 3 pontos para B, duas vezes
* 2 pontos para G
* 1 ponto para E

E para total:

                        3 + 2*1 + 2*3 + 2 + 1
                        = 3 + 2 + 6 + 3
                        = 5 + 9
                        = 14

Extensões
* Você pode jogar uma carta dupla ou tripla.
* Você pode jogar uma palavra dupla ou tripla.

Para executar os testes:

                        $ pub run test
                        
Para obter informações mais detalhadas sobre a pista de Dart, consulte as páginas de instalação e teste .

Fonte
Inspirado no jogo Extreme Startup https://github.com/rchatley/extreme_startup

Envio de soluções incompletas
É possível enviar uma solução incompleta para que você possa ver como outras pessoas concluíram o exercício.