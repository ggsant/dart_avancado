# Condicionais

                    void main() {
                        double nota = 7.0;

                        if (nota < 5) {
                            print("Reprovado");
                        } else if (nota == 10.0) {
                            print("Aprovado com louvor");
                        } else {
                            print("Aprovado");
                        }
                    }

A função if verifica uma condição, já o else if verifica a condição se a anterior for falsa e o else irá executar caso nenhuma das acima forem verdadeiras. Podemos colocar quantos else if quisermos.

**OPERADOR TERNÁRIO**

É uma forma compacta de realizar um if-else.

                    void main(){ 
                        bool aprovado = true;
                        String info;

                        info = aprovado ? "Aprovado" : "Reprovado"; 

                        print(info);
                    }

**IMPORTANTE! Ao declarar uma variável e não defini-la ela automaticamente se torna nula:**

                    void main() {
                        String nome;
                        String info2 = nome ?? "Não Informado";
                        print(info2);
                    }

A condicionável ?? traz o seguinte argumento: se a variável nome for nula, então ela retorna "Não Informado", porém se for definida, retorna o valor no qual foi definido. No exemplo acima a variável nome não foi informada, então ela retornará "Não Informado".

**CONDICIONAIS LIMITADAS (Switch)**

Switch é outro tipo de condicional que é muito utilizada quando temos constantes. É interessante para usar o switch quando temos uma variável que assume valores definidos. Em regra, deve-se utilizá-la com case (define qual o valor da variável) e breck (termina o comando).

                    void main() {
                        String linguagem = "Dart";

                        switch (linguagem) {
                            case "Dart":
                            print("É Dart!!");
                            //Cada cláusula de case não vazio termina com uma instrução break, como regra.
                            break;
                            case "Java":
                            print("É Java!!");
                            break;
                            default:
                            print("Outro");
                        }
                    }

OBS. O Dart suporta cláusulas de case vazios.

**Referências - Flutter Brasil**