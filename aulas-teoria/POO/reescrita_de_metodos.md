# Reescrita de metodos

Quando se tem um método, como por exemplo o método de "fazer som" da classe "Animal" do artigo anterior, e eu quero que este método se comporte diferente ou altere o conteúdo dele dentro das outras classes "cachorro" ou "gato".

                class Animal {
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

                class Cachorro extends Animal {
                    int fofura;

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

Para fazer isso é simples, basta colocar o "@override" e colocar o método exatamente como está na outra classe. E ao executar o método ele não irá pegar o método da classe "Animal", mas sim da classe que eu adicionou o termo acima, vejamos:

                class Animal {
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

                class Cachorro extends Animal {
                    int fofura; 

                    Cachorro(String nome, double peso, this.fofura): super(nome, peso); 

                    void brincar(){
                        fofura += 10;
                        print("fofura do $nome aumentou para $forura");
                    } 

                    @override
                    void fazerSom(){
                        print("$nome fez au!");
                    }
                }

                class Gato extends Animal {
                    Gato(String nome, double peso): super(nome, peso);

                    void estaAmigavel(){
                        return true;
                    } 

                    @override
                    void fazerSom(){
                        print("$nome fez miau!");
                    }
                }
Toda classe no Dart estende, mesmo que não especifique, uma classe chamada "object" que é uma classe de objeto do Dart. Essa classe tem um método chamado "toString" que também podemos reescrever:

                class Animal {
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

                class Cachorro extends Animal {
                    int fofura;

                    Cachorro(String nome, double peso, this.fofura): super(nome, peso);

                    void brincar(){
                        fofura += 10;
                        print("fofura do $nome aumentou para $forura");
                    }

                    @override
                    void fazerSom(){
                        print("$nome fez au!");
                    }

                    @override
                    void toString(){
                        return "Cachorro | Nome: $nome, Peso: $peso, Fofura: $fofura";
                    }
                } 

                class Gato extends Animal {
                    Gato(String nome, double peso): super(nome, peso);

                    void estaAmigavel(){
                        return true;
                    }

                    @override
                    void fazerSom(){
                        print("$nome fez miau!");
                    }
                }
Se colocarmos agora print(cachorro); ele trará a reescrita que fizemos, porém só para cachorro.

# MODIFICADORES

                class Valores { 

                }

Essa é uma classe em que eu quero armazenar algumas constantes do código, não irei instanciar objetos nela, só irei criá-la para organizar minhas constantes.

                class Valores {
                    int vezesClicado;
                }

Para eu acessar a variável "vezesClicado" da classe "Valores" sem ter que instanciá-la, eu acrescento o modificador "static" à variável, tornando a variável não mais do objeto, mas sim da classe. E assim podemos utilizar o nome da classe + o nome da variável, vejamos:

                class Valores {
                    static int vezesClicado;
                }

                void main(){
                    Valores.vezesClicado = 2;
                }

Outro modificador que temos é o "const" que a partir do momento que você define uma variável como "const", ela não pode ser alterada em nenhum momento, ela também é uma constante em tempo de compilamento, ou seja, em qualquer lugar que eu a colocar ela será substituída pelo valor que foi definido.

E por último temos o "final" que funciona assim, vamos supor que eu tenha uma classe "Pessoa" e eu queira declarar que uma variável (objeto) "pessoa" é igual ao objeto "Pessoa", mas não quero que esta "pessoa" seja alterada em nenhum momento, ou seja, sempre será a mesma. Então, é para isso que se usa o "final" e como a "const" ela também é em tempo de execução, assim, não se pode pegar "pessoa" e colocar outro objeto nela, vejamos como ficaria:

                class Pessoa { 

                } 

                void main(){
                    final Pessoa pessoa = Pessoa();
                    // não se pode mais fazer: pessoa = Pesso();
                }

**Referências - Flutter Brasil**