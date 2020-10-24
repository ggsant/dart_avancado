# Teoria

# Tipos de dados
Ao estudar os tipos de dados conhecemos que valores uma variável pode armazenar e quais operações podem ser realizadas nela.

Dart é uma linguagem fortemente tipada, em que cada variável deve possuir um tipo que não muda ao longo do código, e por isso precisamos conhecer seus tipos de dados.

Os tipos de dados suportados pela linguagem Dart são:

* booleans
* lists
* maps
* numbers
* runes
* sets
* strings

**Nota: Em Dart temos a inferência de tipo, quando usamos a palavra var no lugar do tipo de dado ao declarar uma variável. O tipo de dado será interpretado de acordo com o valor recebido.**

Vamos a um exemplo com tipos de dados. Um padeiro trabalha de segunda-feira a sábado. Como representamos a quantidade de pão vendida a cada dia? Podemos criar um objeto com o tipo de dado Map que vamos chamar de “venda” para receber as quantidades de pães vendidos em cada dia da semana, conforme o código abaixo:

Declarando um objeto do tipo Map para armazenar a quantidade de pães vendidos a cada dia
var venda = {
  'segunda-feira': 22,
  'terça-feira': 35,
  'quarta-feira': 42,
  'quinta-feira': 20,
  'sexta-feira': 29,
  'sabado': 50,
};

* Numbers (num)
Esse tipo de dado pode ser utilizado para números inteiros ou números de ponto flutuante. Para declarar uma variável com esse tipo faça conforme demonstrado abaixo: 
num quantidade = 5;
num valor = 3.4;

* int
Esse tipo de dado é indicado para números inteiros que não tem casas decimais. 
int contagem = 22;

* double
O tipo de dado double é indicado para números de ponto flutuante.
double preco = 4.52;

* Strings
O tipo String representa uma cadeia de caracteres. Atribuímos um valor do tipo String entre aspas simples (') ou aspas duplas(").
String nome = 'José de Almeida';
String sobrenome = "Almeida";

* Booleans
O tipo bool representa um dentre os valores lógicos true ou false. 
bool resultado = false;

* Lists
Na maioria das linguagens de programação uma das estruturas de dados mais utilizada é o array. Na linguagem Dart arrays são objetos do tipo List mais conhecidos como listas. Podemos acessar um valor específico de uma lista informando o seu índice, sendo que os índices começam em zero. Por exemplo se informamos minhaLista[3] obtemos o quarto elemento da lista minhaLista.

var nomes = ['Renato','Diego','Estevão','Rodolfo'];
var terceiroNome = nomes[2]; // acessando o terceiro elemento da lista

* Sets
O tipo de dado Set é usado para criar uma coleção não ordenada com itens únicos. Envolvemos a coleção entre chaves {}
var carros = {'Ferrari','Ferrari','Mustang','Jaguar'};
print(carros); // vai exibir {Ferrari,Mustang,Jaguar}

* Maps
Utilizamos o tipo Map para criar um objeto que associa chave e valor, parecido com o objeto Dicionário que é utilizado em outras linguagens. Tanto a chave quanto o valor podem ser de diversos tipos. Cada chave é única mas os valores podem ser repetidos.
var produto = {
     'nome':'Leite',
     'litros':1,
     'categoria':'Laticínios'
};

Para acessar um elemento de um Map informamos a chave para retornar o respectivo valor em uma sintaxe no modelo nomeDoMap['nomeDaChave']
var nome = produto['nome']; // a variável nome recebe o valor associado à chave nome

* Runes
Usamos o tipo de dado Rune para representar um caractere unicode UTF-16. Reprentamos esse caractere com uma string no formato \uXXXX, sendo que XXXX são quatro dígitos hexadecimais. Para especificar mais ou menos do que quatro dígitos coloque o valor entre chaves \u{XXXXX}. 

Runes emojis = new Runes("\u{1F603}");
print(new String.fromCharCodes(emojis));

