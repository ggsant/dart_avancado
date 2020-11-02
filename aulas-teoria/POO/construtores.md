# Construtores

construtores são funções utilizadas para construir o nosso objeto.

Seja o exemplo abaixo: 

                    class Pessoa {
                    String nome;
                    int idade;
                    double altura; 

                    void dormir(){
                        print("$nome está dormindo");
                    }

                    void aniver(){
                        idade++;
                    }
                    }

                    void main(){
                    Pessoa pessoa1 = new Pessoa();
                    pessoa1.nome = "Diego";
                    pessoa1.altura = 1.70;
                    pessoa1.idade = 30; 

                    print(pessoa1.nome);
                    pessoa1.aniver();
                    print(pessoa1.idade);
                    }

No exemplo, nós atribuímos um nome, altura e idade à classe pessoa. Com construtores você pode atribuir estes dados no momento da criação, ou instância, da Pessoa para reduzir o seu código.

# Construtor Padrão

Para exemplificar, se dermos um print(pessoa1); irá mostrar "Instance of 'Pessoa'", ou seja, é um objeto que está na memória, mas ainda não está construído, completo. Parece muito com uma função a estrutura do construtor.

Para declarar um construtor, primeiramente vamos para dentro do escopo da classe Pessoa e pegamos o nome desta classe e a declaramos, caso não declaremos, ele irá declarar um escondido, não é obrigado a declarar um construtor vazio (ex. Pessoa();), vejamos o exemplo:

                    class Pessoa {
                    String nome;
                    int idade;
                    double altura; 

                    Pessoa(String nome, int idade, double altura){
                    }; // Construtor declarado, se estiver vazio não é obrigado a declarar 

                    void dormir(){
                        print("$nome está dormindo");
                    }

                    void aniver(){
                        idade++;
                    }
                    }

O construtor Pessoa(String nome, int idade, double altura) {} pega o nome, idade e altura declarados acima dele.

A pergunta é: como colocar nome (da classe Pessoa) = nome (do construtor)? para isso existe a palavra this que especifica um atributo (variável) do nosso objeto (a variável declarada no início da classe Pessoa) e não do nosso parâmetro do construtor Pessoa.

Assim, this traduzindo seria 'este', mas o que isso significa aí no construtor? quer dizer que 'nesta classe queremos acessar tal atributo', this.nome, vejamos:

                        class Pessoa {
                        String nome;
                        int idade;
                        double altura; 

                        Pessoa(String nome, int idade, double altura){
                            this.nome = nome;
                            this.idade = idade;
                            this.altura = altura;
                        }; 

                        void dormir(){
                            print("$nome está dormindo");
                        }

                        void aniver(){
                            idade++;
                        }
                        }

# Construtor Parametrizado

O interessante é que em Dart você pode fazer melhor, vejamos:


                        class Pessoa {
                        String nome;
                        int idade;
                        double altura; 

                        // Este construtor faz a mesma coisa que o anterior, mas em uma só linha
                        Pessoa(this.nome, this.idade = idade, this.altura); 

                        void dormir(){
                            print("$nome está dormindo");
                        }

                        void aniver(){
                            idade++;
                        }
                        }

Como já instanciamos o construtor, podemos fazer da seguinte forma, dê uma olhada como era antes:

                        void main(){
                        Pessoa pessoa1 = new Pessoa();
                        pessoa1.nome = "Diego";
                        pessoa1.altura = 1.70;
                        pessoa1.idade = 30; 

                        print(pessoa1.nome);
                        pessoa1.aniver();
                        print(pessoa1.idade);
                        }

E agora como fica depois que já criado o construtor da classe Pessoa:

                        void main(){
                        Pessoa pessoa1 = new Pessoa("Diego", 30, 1.80); 

                        print(pessoa1.nome);
                        pessoa1.aniver();
                        print(pessoa1.idade);
                        }

Viram como ficou mais limpo o código? Esta é a base de programação, em praticamente tudo você irá usar isso.

# Named Constructors (Construtor Nomeado)

É outro tipo de construtor, é um construtor diferenciado para quando se tem parâmetros diferentes, seria um construtor que tem um nome:

                    class Pessoa {
                    String nome;
                    int idade;
                    double altura; 

                    Pessoa(this.nome, this.idade = idade, this.altura); 

                    // Named Constructors, neste caso aqui eu só quero mudar o parâmetro nome e altura, idade será igual para todos, ou seja, 0
                    Pessoa.nascer(this.nome, this.altura){
                        idade = 0;

                        // Posso chamar outras funções aqui dentro também quando for instanciada
                        print("$nome nasceu!");
                        dormir();
                    };

                    void dormir(){
                        print("$nome está dormindo");
                    }

                    void aniver(){
                        idade++;
                    }
                    }
Para poder chamar este named constructors eu faço o seguinte em "void main();":

                    void main(){
                    Pessoa nene = Pessoa.nascer("Gabriela", 0.30);
                    print(nene.nome);
                    print(nene.idade);
                    }
No caso acima irá mostrar no nosso console as seguintes mensagens:

Gabriela nasceu!
Gabriela está dormindo! 
0



**Referências - Flutter Brasil**