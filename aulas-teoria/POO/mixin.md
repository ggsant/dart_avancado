# Mixin

Mixin é uma classe abstrata como qualquer outra, mas a grande ideia a respeito dele é que não é permitido ter heranças múltiplas em Dart, então Dart conseguiu contornar este problema utilizando a estrutura chamada Mixin.

Para poder entender vamos codar, criando algumas classes abstratas:

                    abstract class Artista {
                    }

                    abstract class Cantar {
                        cantar() {
                            return 'Canta Sertanejo';
                        }
                    }
Agora, criaremos uma classe chamada Dançar, porém ela será um Mixin:

                    mixin Dancar on Artista {
                        String dançar() {
                            print('Dançar');
                        }
                    }
O legal é que você pode obrigar a sua classe mixin só seja utilizada em uma classe específica, como posta acima, basta colocar on NomeDaClasse. Assim, só quem poderá utilizar este mixin é quem extender a classe Artista.

                    class Gabriela extends Artista {
                    }

Para dizer que Gabriela canta e dançar, basta adicionar o termo with e adicionar as demaisa classes:

                class Gabriela extends Artista with Cantar {
                }

Caso você queira acrescentar mais classes, você pode utilizar uma vírgula e acrescentar a nova classe posteriormente:

            class Gabriela extends Artista with Cantar, Dançar {
            }

OBS. Dart observa a hierarquia de implementação, no caso apresentado acima, foi implementado primeiro Cantar e depois Dançar, desta forma ele implementa as classes nesta ordem.

Para usar basta instanciar a classe criada e chamar os atributos criados:

                        void main() {
                        var j = Gabriela();
                        j.cantar();
                        j.dancar();
                        }

Como encadear as requisições, ou seja, diminuir o código acima? basta colocar .. 

                        void main() {
                        Gabriela()
                            ..cantar();
                            ..dancar();
                        }

**Referências - Flutter Brasil**