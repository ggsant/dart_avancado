# Imports

O ecossistema Dart usa pacotes para gerenciar software compartilhado, como bibliotecas e ferramentas. 

Para obter pacotes Dart, você usa o gerenciador de pacotes pub.
Você pode encontrar pacotes disponíveis publicamente sobre o local pub.dev , ou você pode carregar pacotes a partir do sistema de arquivos local ou em outro lugar, como repositórios Git. 

Independentemente de onde venham seus pacotes, o pub gerencia as dependências de versão, ajudando você a obter versões de pacote que funcionam entre si e com sua versão do SDK.

A maioria dos IDEs experientes em Dart oferece suporte para o uso de pub que inclui a criação, download, atualização e publicação de pacotes. Ou você pode usar pubna linha de comando .

No mínimo, um pacote Dart é um diretório que contém um arquivo pubspec . O pubspec contém alguns metadados sobre o pacote. Além disso, um pacote pode conter dependências (listadas no pubspec), bibliotecas Dart, aplicativos, recursos, testes, imagens e exemplos.

Para usar um pacote, faça o seguinte:

* Crie um pubspec (um arquivo denominado pubspec.yamlque lista as dependências do pacote e inclui outros metadados, como um número de versão).
* Use o pub para obter as dependências do seu pacote.
* Se o seu código Dart depender de uma biblioteca no pacote, importe a biblioteca.

# Criação de um pubspec

O pubspec é um arquivo nomeado pubspec.yaml que está no diretório superior do seu aplicativo. O pubspec mais simples possível lista apenas o nome do pacote:

                    name: my_app

Aqui está um exemplo de um pubspec que declara dependências em dois pacotes ( jse intl) que estão hospedados no site pub.dev:

                    name: my_app
                    dependencies:
                    js: ^0.6.0
                    intl: ^0.15.8

Para obter detalhes sobre como criar um pubspec, consulte a documentação do pubspec e a documentação dos pacotes que deseja usar.

# Obtendo pacotes

Depois de ter um pubspec, você pode executar a pub getpartir do diretório superior do seu aplicativo:

                    cd <path-to-my_app>
                    pub get

Esse processo é chamado de obtenção das dependências .

O pub get determina de quais pacotes seu aplicativo depende e os coloca em um cache central do sistema . 
Se seu aplicativo depender de um pacote publicado, o pub baixa esse pacote do site pub.dev.  

Para uma dependência Git , pub clona o repositório Git. Dependências transitivas também estão incluídas. Por exemplo, se o jspacote depende do testpacote, pub obtém o jspacote e o testpacote.

Pub cria um arquivo .packages (no diretório superior do seu aplicativo) que mapeia cada nome de pacote do qual seu aplicativo depende para o pacote correspondente no cache do sistema.

# Importando bibliotecas de pacotes

Para importar bibliotecas encontradas em pacotes, use o package:prefixo:

                import 'package:js/js.dart' as js;
                import 'package:intl/intl.dart';

O tempo de execução do Dart pega tudo depois package: e procura dentro do .packages do seu aplicativo.

utilizaremos: 
https://api.dart.dev/stable/2.10.2/dart-convert/dart-convert-library.html

