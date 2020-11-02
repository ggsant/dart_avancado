# Extensions 

Extensions é a forma de adicionar métodos dentro de classes já existentes, vejamos:

                void main() {
                    String nome = 'Flutter';
                    print(ola(nome));
                }

                String ola(String nome) {
                    return "Olá $nome!";
                }
No exemplo acima, se o executarmos, irá debugar Olá Flutter!, porém podemos utilizar o extension dessa forma:

                void main() {
                    String nome = 'Flutter';
                    print(nome.ola());
                }

                extension Ola on String{
                    String ola() {
                        return 'Olá $this!';
                    }
                }


**Referências - Flutter Brasil**