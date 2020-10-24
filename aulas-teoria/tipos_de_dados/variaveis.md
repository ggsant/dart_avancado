# Tipos, Variáveis e Escopo
Dart é uma linguagem fortemente tipada, mas declarar um tipo é opcional, porem o compilador irá inferir o tipo para você.

Para declarar uma variável em Dart é preciso do tipo e nome e você pode inicializar uma variável assim que a declara, se você não inicializar a variável em Dart ela será null. 

Diferente de Java que possui valores padrão para cada tipo como por exemplo um int(inteiro) que não tem um valor inicializado recebe 0.
O seguinte código em Dart lançará uma exceção:

                                int inteiro;
                                inteiro++;

O que certamente não aconteceria em Java, então atenção a usar uma variável não inicializada.

O tipos mais comuns em Dart são:

**var**
Quando usado var o tipo é inferido pelo compilador para o primeiro tipo de objeto atribuído a variável.

**int**
O int tem o tamanho de 64 bits e aceita valores negativos ou positivos que varia de -2⁶³ até 2⁶³ .

**double**
O double também tem um tamanho de 64 bits e segue a especificação padronizada pelo IEEE 754.

**num**
O num é o super tipo de int e double e pode receber literal tanto inteiro quanto decimal e também é o responsavel por implementar todas as operações básicas de matemática.

**String**
A String é uma serie de caracteres na codificação UTF-16, toda String literal começa e termina com ‘(aspas simples) ou “(aspas duplas).

Quando for trabalhar com Regex você precisa marcar a String como raw, escrevendo um ‘r’ antes da literal RegExp(r"\d*?"); do contrario sua expressão irá falhar.

**bool**
O boolean representa os valores true e false que podem ser atribuídos com os literais ou como resultado de alguma operação logica

**dynamic**
O dynamic assim como o nome sugere ele assume tipos dinâmicos, sugiro cuidado ao trabalhar com tipo dinâmicos para tentar acessar uma propriedade ou método que o objeto não possui irá lançar um exceção em tempo de execução. Aproveitando o exemplo anterior do inteiro.

# Escopo

Dart implementa variável/função top level, ou seja pode ser definida fora das classes, isso mesmo você não precisa de uma classe para criar e definir uma variável ou função.

Uma variável ou função top level está acessível para todos as classes e funções do arquivo .dart onde foi declarado ou em todos arquivo que o importar usando import "package:seu_pacote/sua_pasta/seu_arquivo.dart"; .

Dart não possui modificadores de acesso( public, private, default, proteced) como em Java, toda classe, variável ou função é publica por padrão, porem se quiser definir uma variável ou função privada, você tem que indicar que ela é privada usando ao convenção de nomenclatura de Dart usando _( subtraço).

Declarando uma classe Usuario com 2 propriedades nome e _senha:

class Usuario {
 String nome;
 String _senha;
}

Ao tentar acessar a propriedade _senha o compilador verifica e retorna um erro.

import 'usuario.dart';
main(){
 var usuario = Usuario();
 usuario.nome = "Marcus Duarte";
 usuario._senha = "segredo";
 print("A senha do ${usuario.nome} é ${usuario._senha}");
}

O erro que o compilador retorna:

teste.dart:6:10: Error: The setter '_senha' isn't defined for the class '#lib1::Usuario'.
Try correcting the name to the name of an existing setter, or defining a setter or field named '_senha'.
usuario._senha = "segredo";
