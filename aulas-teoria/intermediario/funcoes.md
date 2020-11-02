
# Funções

**SINTAXE**

Em Dart, a estrutura de uma função é parecida com as de outras linguagens, porém com algumas coisas a mais, por exemplo, sua função pode não retornar nada (colocando o tipo de retorno como void ou não colocando nada antes):

        TipoDeRetorno nomeDaFuncao(TipoDoArgumento nomeDoArgumento, OutroTipo outroNomeDeArgumento){
                    // Aqui vai o corpo da função
                    return tipoDeRetorno;
        }

**FUNÇÃO SEM PARÂMETROS**

            void main(){
                printIntro();
            }

            void printIntro(){
                print("Seja bem-vindo");
            }

Como podemos ver acima, para declarar uma função, utilizamos o void nomedafuncao(). Toda vez que eu colocar printIntro(); no meu código ele irá repetir o conteúdo da função criada.

Lembrando o que escrevemos antes, o tipo de retorno está void, ou seja, não está retornando nada este função, somente mostrando na tela a mensagem "Seja bem-vindo".

**FUNÇÃO COM PARÂMETROS**

                void main(){
                    printIntro();
                    calcSoma(10.0, 15.0);
                }

// aqui estão os parâmetros, você pode colocar quantos parâmentros você quiser dentro de uma função

                void calcSoma(double a, double b){ 
                    double res = a + b;
                    print(res);
                }

Toda vêz que for declarar um parâmetro tem que declarar o nome e o tipo (double, int...) como no exemplo acima.

**FUNÇÃO COM PARÂMETROS E RETORNO**

Agora, vamos supor que você queira, ao invés de printar o resultado dentro da função calcSoma(), receber o resultado dentro de main().

                void main(){
                    print(resMult);
                    
                    // pega o resultado da função e joga dentro desta variável
                    double resMult = calcMult(10.0, 15.0);
                }

                double calcMult(double a, double b){
                    double res = a * b;

                    // a função irá retornar um valor, e como o valor retornado é double, tem que retirar o void e colocar double no seu lugar, assim é necessário dar um return
                    return res; 
                }

OBS. Estavamos colocando void porque significa nada, assim, você pode até omiti-lo, mas é aconselhável colocá-lo para ter certeza que não está retornando nada.

Veremos agora uma simplificação da declaração de uma função. Vamos pegar a área de um círculo:

                    void main(){
                      print(calcAreaCirculo(10.0);
                    }

                    /*
                    double calcAreaCirculo(double raio){
                        return 3.14 * raio * raio;
                    } */

// reduzindo a função comentada acima

    double calcAreaCirculo(double raio) => 3.14 * raio * raio;

O "=>" é a mesma coisa de return, então você tem duas formas de declarar uma função.

**PARÂMETROS OPCIONAIS**

Vamos agora criar uma função criarBotao() onde tem três parâmetros: texto, cor e largura, como abaixo:

            void main(){
                criarBotao("Botao Sair", "Preto", 20.0);
            }

            void criarBotao(String texto, String cor, double largura){
                print(texto);
                print(cor);
                print(largura);
            }

Porém, como faço para transformar estes parâmetros (cor e largura) em opcionais? basta colocá-los entre chaves {}:

            void main(){
                criarBotao("Botao Sair", cor: "Preto", largura: 16.0);
            }

            void criarBotao(String texto, {String cor, double largura}){
                print(texto);
                print(cor);
                print(largura);
            }
Para que você o defina os valores opcionais é necessário colocá-los assim: "nomedoparâmetro: 'cor desejada'", conforme exposto acima.

Caso não seja especificado o parâmetro, ele retornará null, para definir um valor padrão é necessário colocar a expressão ??, vamos ver:

            void main(){
                criarBotao("Botao Sair");
            }

            void criarBotao(String texto, {String cor, double largura}){
                print(texto);
                print(cor ?? "Preto");
                print(largura ?? 10.0);
            }

Desta forma, ao não especificar o parâmetro em criarBotao(), ele define a valor padrão que está após ??.

**COMO PASSAR FUNÇÕES COMO PARÂMETRO**

Vamos criar um botão e assim que ele for criado iremos chamar outra função, mas agora como parâmetro.

                void main(){
                    criarBotao("Botao Sair", botaoCriado);
                }

                void botaoCriado(){
                    print("Botao Criado");
                }

                void criarBotao(String texto, Function criadoFunc, {String cor, double largura}){
                    print(texto);
                    print(cor ?? "Preto");
                    print(largura ?? 10.0);
                    criadoFunc();
                }

No código acima, irá apresentar a seguinte informação no console:

                    Botao Sair
                    Preto 
                    10 
                    Botao Criado

**FUNÇÃO ANÔNIMA**

Porém, muitas vezes eu não quero criar uma função separada (por exemplo, a do botaoCriado();) e sim colocá-la diretamente, podemos fazê-la assim:

                    void main(){
                        criarBotao("BotaoCamera", (){
                            print("Botao criado por func anonima");
                        });
                    }

                    void botaoCriado(){
                        print("Botao Criado");
                    }

                    void criarBotao(String texto, Function criadoFunc, {String cor, double largura}){
                        print(texto);
                        print(cor ?? "Preto");
                        print(largura ?? 10.0);
                        criadoFunc();
                    }
                    
**ESCOPO DAS VARIÁVEIS**

Escopo é o conteúdo dentro das funções, ou seja, aquilo que está dentro de {}. Quando se declara uma variável dentro de um escopo, esta variável só funciona para esta função, não vale para fora. Caso você queira acessar em void main() uma variável chamada double res, que está dentro de uma outra função chamada void soma();, você deve declará-la fora das funções, pois assim elas se tornam globais, vejamos:

                    double res;

                    void main() {
                        soma(10.0, 20.0);
                        print(res);
                    }

                    void soma(double a, double b){
                        res = a + b;
                    }
                    
Desta forma, pode-se acessar a variável declarada global em qualquer função.

**Referências - Flutter Brasil**