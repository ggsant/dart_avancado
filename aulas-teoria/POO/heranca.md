# Herança

Herança é um dos pontos chave de programação orientada a objetos (POO). A ideia de herança é facilitar a programação. Uma classe A deve herdar de uma classe B quando podemos dizer que A é um B.

**Lembre-se que em Dart, tudo é um objeto**.

Vamos declarar duas classes, uma chamada cachorro e a outra gato, vamos atribuir duas variáveis aos dois: nome e peso:

                    class Cachorro {
                    String nome;
                    double peso;
                    }

                    class Gato {
                    String nome;
                    double peso;
                    }

Agora, vamos atribuir alguns métodos aos dois como "comer" e "fazer som". Vamos diferenciar também a variável "fofura" para o cachorro e "está amigável" para o gato:

                    class Cachorro {
                    String nome;
                    double peso;
                    int fofoura; 

                    void comer(){
                        print("$nome comeu");
                    }

                    void fazerSom(){
                        print("$nome fez dom!");
                    } 

                    void brincar(){
                        fofura += 10;
                        print("fofura do $nome aumentou para $forura");
                    }
                    } 

                    class Gato {
                    String nome;
                    double peso; 

                    void comer(){
                        print("$nome comeu");
                    }

                    void fazerSom(){
                        print("$nome fez dom!");
                    }

                    void estaAmigavel(){
                        return true;
                    }
                    }

Perceba que em ambas as classes há atributos semelhantes. Aqui que entra a herança, vamos criar uma classe "Animal" com os atributos semelhantes entre o Gato e Cachorro e extender a classe Animal a ambos, ou seja, eles herdam as propriedades de da classe "Animal", tudo que o animal tem, cachorro e gato também tem:

                class Animal {
                String nome;
                double peso; 

                void comer(){
                    print("$nome comeu");
                } 

                void fazerSom(){
                    print("$nome fez dom!");
                }
                } 

                class Cachorro extends Animal {
                int fofura;

                void brincar(){
                    fofura += 10;
                    print("fofura do $nome aumentou para $forura");
                }
                } 

                class Gato extends Animal {
                void estaAmigavel(){
                    return true;
                }
                }
                Vamos agora criar alguns construtores:

                class Animal {
                String nome;
                double peso; 

                // pega as informações repassadas pelos animais gato e cachorro
                Animal(this.nome, this.peso); 

                void comer(){
                    print("$nome comeu");
                } 

                void fazerSom(){
                    print("$nome fez dom!");
                }
                }
                
                class Cachorro extends Animal {
                int fofura; 

                // Temos que passar a função super, pois nome e peso não estão sendo passados para a classe Animal, então coloca-se o super que é um construtor da nossa super classe Animal
                Cachorro(String nome, double peso, this.fofura): super(nome, peso); 

                void brincar(){
                    fofura += 10;
                    print("fofura do $nome aumentou para $forura");
                }
                } 

                class Gato extends Animal {
                Gato(String nome, double peso): super(nome, peso); 

                void estaAmigavel(){
                    return true;
                }
                }

Repare nos comentários dos códigos que nós criamos que colocamos alguns construtores, portanto iremos criar nossos animais na classe mãe:

                void main(){
                Cachorro cachorro = Cachorro("Bob", 10.0, 100);
                cachorro.fazersom();
                cachorro.comer();
                cachorro.brincar(); 

                Gato gato = Gato("Jerry", 10.0);

                cachorro.fazersom();
                cachorro.comer();
                // como estou acessando um método do gato não se pode colocar somente cifrão, deve-se colocar entre chaves
                print("Está amigável? ${gato.estaAmigavel()}");
                }


**Referências - Flutter Brasil**