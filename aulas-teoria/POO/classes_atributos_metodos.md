# Programação Orientada a Objetos

Um dos maiores erros de quem entra no mundo da programação é querer passar a carroça na frente dos bois. Antes de aprender o Framework da moda ou ir se aventurar em uma nova linguagem de programação, é importante ter em mente os conceitos "básicos" que ajudam a construir um conhecimento sólido e diminuir a curva de aprendizagem ao se deparar com uma nova tecnologia.

Eu ainda não faço computação, então eu busco criar esse conhecimento de maneira autodidata. Recentemente, percebi que uma das lacunas que eu encontrei no meu conhecimento, foi o conceito de Programação Orientada a Objetos. Então resolvi recorrer ao meu grande mestre Professor Gustavo Guanabara, do Curvo em Vídeo para reforçar os confeitos que eu já uso no estágio, mas que muita das vezes não ficavam claros na minha cabeça. O curso é desenvolvido em Java, porém como eu trabalho com Dart, eu decidi reproduzir o aprendizado nas aulas nessa linguagem.

Pois bem, chega de papo, vamos logo para a mão no código.

Se você procurar rapidamente no Wikipédia achara: **“Programação Orientada a Objetos (também conhecida pela sua sigla POO)** é um modelo de análise, projeto e programação de sistemas de software baseado na composição e interação entre diversas unidades de software chamadas de objetos.”

**Programação orientada à objetos (POO), surgiu com a finalidade de facilitar a vida de programadores. Na POO, os objetos conversam entre si.**

Criada por Alan Kay, um Biólogo e Matemático, que formulou sua “analogia algébrico-biológica” e lançou o postulado de que o computador ideal deveria funcionar como um organismo vivo, isto é, cada “célula” relacionando-se com outras.

**“As coisas simples devem ser simples e as coisas complexas, possíveis.” - Alan Kay**

Vantagens da programação orientada à objetos:

* Confiável
* Oportuno
* Manutenível
* Extensível
* Reutilizável
* Natural

# Classe

É um modelo ou um plano para um objeto, exemplificando seria uma planta para se construir uma casa. É um arquivo onde você concentra todas as características daquele objeto. No exemplo a seguir iremos criar uma classe chamada pessoa. Veja como se estrutura uma classe class NomeDaClasse {} :

Nós declaramos uma classe da seguinte maneira:

                    class Pessoa {
                    }

**ESTRUTURA DAS CLASSES**

**Atributos**

Dentre dessa classe pessoa temos os atributos desta classe: nome, idade e altura. Esses atributos são as informações que o nosso objeto irá armazenar.

                    class Pessoa {
                    // atributos
                    String nome;
                    int idade;
                    double altura;
                    }

**Métodos (Funções)**

Agora que o objeto já está definido vamos ver o que uma pessoa é capaz de fazer, para definir suas ações as fazemos por meio de funções void que chamamos, quando estão dentro das classes, de métodos:

                    class Pessoa {
                    // atributos
                    String nome;
                    int idade;
                    double altura; 

                    // métodos
                    void dormir(){
                        print("$nome está dormindo");
                    }
                    }

**OBS. Na Aula anterior, sobre funções, nós aprendemos que void é uma função que não retorna nada para quem a requisita.**

# Objetos

Objetos são **instâncias de classes,** que determinam qual informação um objeto contém e como ele pode manipulá-la. É uma entidade capaz de reter um estado (informação) e que oferece uma série de informações (comportamento) ou para examinar ou para afetar este estado. É através deles que praticamente todo o processamento ocorre em sistemas implementados com linguagens de programação orientada a objetos.

Podemos criar objetos por meio desta classe, ou seja, declará-los ou instanciar nossas classes, portanto, hipoteticamente falando seria "criar as pessoas". Para instanciá-las, fazemos da seguinte forma:

                    Pessoa pessoa1 = new Pessoa(); 

Aplicando-a:

                    class Pessoa {
                    String nome;
                    int idade;
                    double altura; 

                    void dormir(){
                        print("$nome está dormindo");
                    }
                    }

                void main(){
                // criando um objeto, pode começar com var, se quiser
                // aqui instanciamos nossa pessoa
                Pessoa pessoa1 = new Pessoa(); 
                // em Dart o new é opcional, pode-se colocar ou não, na dúvida coloca para ficar claro que está criando uma nova pessoa
                }
                
Primeiro criamos o tipo, ou seja, é do tipo "Pessoa", depois o nome "pessoa1", depois recebe um novo objeto do tipo Pessoa(); que seria um instanciamento de um objeto (é exatamente igual a declarar uma variável String algumacoisa = "").

Resumindo estamos criando a pessoa1. Se dermos um print nessa pessoa1, irá aparecer "Instance of 'Pessoa'", ou seja, quer dizer que agora o pessoa1 é uma instância da classe Pessoa.

Desta forma, já que criamos uma pessoa (pessoa1) vamos declarar os dados desta pessoa.

                    void main(){
                    Pessoa pessoa1 = new Pessoa();
                    
                    // acessando os atributos
                    pessoa1.nome = "Gabriela";
                    pessoa1.altura = 1.70;
                    pessoa1.idade = 24;

                    print(pessoa1.nome);
                    }

Coloca-se o "." para acessar tal atributo. Pode-se, portanto, criar outra pessoa (pessoa2) que será criada da mesma fonte, mas com dados diferentes.

**Chamando um método**

Para chamar um método utilizamos também o "." e depois o nome do método, conforme abaixo:

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
                    
No comando acima irá retornar a idade conforme a função aniver();, ou seja irá retornar o número 31 (30+1).

**OBS. caso queira colocar uma atributo privado, basta colocar um underline antes do atributo que deseja ser privado, exemplo, _altura = 1.70;**