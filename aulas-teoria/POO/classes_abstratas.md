# Classes Abstratas (Interfaces)

**Introdução**

**O problema da Herança Multipla**

Em Dart não se pode fazer uma herança multipla, ou seja, uma classe não pode herdar de duas classes. Mas você sabe o por quê? A herança múltipla possui o problema de conflito de nomes. Imagine se você criar uma classe chamada Humano que tenha um atributo nome, e uma Classe Robô que também tenha o atributo nome. Ao criar uma classe Android que herde de Humano e de Robô você vai ter problemas sérios, geralmente complicados de resolver. Herança Múltipla é uma das facilidades que geralmente não facilitam nada que criamos.

Então para resolver este problema nós utilizamos a interface ou abstract class, no caso exposto acima, Android será uma classe abstrata.

**Objetivo**

O objetivo aqui é pegar classes não relacionadas, isto é, pegar funcionalidades comuns para classes não relacionadas.

Assim, por exemplo, um gato, cachorro, leão podem ser agressivos, mas esta relação é diferente de uma relação de herança, é uma relação de implementação (implementam aquilo que existe na classe Agressivos).

Portanto não estamos limitados somente a heranças, mas também podemos usar interfaces ou classes abstratas.

Isto tudo se resume a seguinte pergunta: como podemos utilizar funções comuns para classes não relacionadas? é para quebrar esse limite que temos uma classe que não pode jamais herdar de duas classes.

O gato, cachorro e leão continuam sendo Animais, herdam esta característica, porém a agressão é uma implementação.

# Classes Abstratas

Não é concreta, é só uma idéia, um conceito abstrato, uma classe genérica só tem um conteúdo padrão que depois poderá ser implementado de uma forma concreta. Ex. se eu disser que gosto de formas (é muito genérico), a pergunta que você faria seria qual forma? aí vem a classe concreta que explica que tipo de forma.

Por exemplo, dentro de Animal temos os felinos e pessoas, dentro de felinos gato e tigre que são concretos.

Assim, vemos que as classes abstratas são genéricas.

Usamos a palavra chave abstract para impedir que uma classe possa ser instanciada. Esse é o efeito direto de se usar o modificador abstract na declaração de uma classe:

                abstract class Animal {
                    String nome;
                    double peso; 

                    Animal(this.nome, this.peso); 

                    void comer(){
                        print("$nome comeu");
                    } 

                    void fazerSom(){
                        print("$nome fez som!");
                    }
                }

Para usá-la, basta colocar abstract antes da classe que quer tornar abstrata, assim, não poderá instanciá-la, mas poderá usá-la como super classe para herdar algo.

Pode-se também declarar métodos nas classes abstratas sem declarar nada, sem nenhum corpo, ou seja, na parte void fazerSom() pode-se retirar o seu corpo, desta forma:

            abstract class Animal {
                String nome;
                double peso; 

                Animal(this.nome, this.peso); 

                void comer(){
                    print("$nome comeu");
                } 

                void fazerSom();
            }

Porém, será obrigado a implementar (com implements ou extends) ela nas classes que herdam a classe abstrata. E sempre que implementá-las temos que implementar o método:

                class Gato extends Animal {
                    Gato(String nome, double peso): super(nome, peso); 

                    bool estaAmigavel(){
                        return true;
                    } 

                    // Obrigado a implementá-lo
                    @override
                    void fazerSom(){
                        print("$nome fez miau!");
                    }
                }

Agora vamos em declarar em main para ver o que ocorre:

                    main() {
                        var gato = Gato('Garfield', 0.30);
                        gato.comer();
                    }

Irá mostrar 'Garfield comeu' no console, veja que implementamos o método comer da classe abstrata no Gato. 

Qual o potencial desssa classe?
Vamos criar tudo novamente, primeiro uma classe Animal:

                    abstract class Animal {
                        void respirar();
                        void fazerSom();
                    }
Perceba que só fizemos um "contrato" não especificamos nada na classe abstrata Animal, pois iremos implementá-la em outra classe, portanto vamos criar a classe Pessoa e implementar esse contrato que dizemos:

        class Pessoa implements Animal {
            String nome, nacionalidade;

            Pessoa(this.nome, this.nacionalidade);

            @override
            void respirar() {
                print(nome + ' respirando igual um humano');
            }

            @override
            void fazerSom() {
                print(nome + ' fazendo som como Humano e é ' + nacionalidade);
            }
        }
A partir do momento que a implemento, o Dart já exige que declaremos o estas classes. Vamos fazer o teste e ver o que acontece:

            main() {
                var pessoa = Pessoa('Tiago', 'Brasileiro');
                pessoa.respirar();
                pessoa.fazerSom();
            }
**Debug:**

                Tiago respirando igual um humano
                Tiago fazendo som como Humano e é Brasileiro

Viu que interessante. Geralmente a utilizamos para sabermos o que queremos implementar.

Vamos nos aprofundar um pouco mais criando a classe abstrata Engracado e criar um modelo de contrato, fazerRir();:

                abstract class Engracado {
                    void fazerRir();
                }
Criaremos uma classe Humorista que extenderá Pessoa implementando a classe Engracada:

            class Humorista extends Pessoa implements Engracado {
                // como criamos construtores na class Pessoa, temos que passá-lo para o super
                Humorista(String nome, String nacionalidade) : super(nome, nacionalidade);

                void fazerRir() {
                    print("humorista engracado");
                }
            }
Vamos testar:

                main() {
                    var grandeHumorista = Humorista("Pedro", "Americano");
                    grandeHumorista.fazerSom();
                    grandeHumorista.respirar();
                    grandeHumorista.fazerRir();
                }
**Debug:**

                Pedro fazendo som como Humano e é Americano
                Pedro respirando igual um humano
                Pedro é um humorista engracado

Que show né? Assim, você pode ir implementando uma na outra, podemos fazer, por exemplo, outra classe chamada Palestra que não tem relação com Animal, nem é uma pessoa, mas que pode implementar a classe Engracado. 

Mas aí você me pergunta: para que server esse trem?

Bom, no código escrito acima, não faz sentido criar o objeto "Animal", pois eu só quero saber que tipo de animal é, entendeu?

O que, exatamente, vem a ser a nossa classe Animal? Eu só tenho dois animais gato e cachorro. Ela é uma classe que apenas idealiza um tipo, define apenas um rascunho, um contrato.

Para o nosso sistema, é inadmissível que um objeto seja apenas do tipo Animal (pode existir um sistema em que faça sentido ter objetos do tipo Animal, mas no nosso caso não).

**Referências - Flutter Brasil**