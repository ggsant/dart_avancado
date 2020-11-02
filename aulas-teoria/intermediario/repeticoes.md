# Repetições

**FOR**

É utilizado quando se tem um **número fixo de repetições**.

                    void main() {
                        for (int i = 0; i < 10; i++) {
                            print(i);
                        }
                    }
                    
Entendendo: for (int i = 0; i < 10; i++) o "int i = 0" é o primeiro valor, valor inicial; já "i < 10" é a condição de repetição e o último "i++" é o incremento. Neste exemplo se o executarmos irá aparecer no console os números de 0 a 9. Caso eu queira colocar de 2 em 2, por exemplo, é só colocar no incremento "i += 2".

Resultado:

                                0
                                1
                                2
                                3
                                4
                                5
                                6
                                7
                                8
                                9

**WHILE**

Enquanto a função definida for válida, ele a executa. Geralmente é utilizado quando não se sabe quantas vezes irá repetir tal função. Então, while serve para funções indefinidas e for para funções definidas.

                    void main() {
                        int j = 0;
                        while (j < 10) {
                            print(j); // Mostra de 0 a 9
                            j++;
                        }
                    }

OBS. Pode-se usar dentro do while o if.

**DO-WHILE**

Diferente do while que avalia a condição antes do loop, o do-while executa a condição mesmo que ela não seja válida, ou seja, avalia a condição após o loop.

                        void main() {
                            int k = 0;
                            do {
                                print(k);
                                k++;
                            } while (k < 10);
                        }

**Referências - Flutter Brasil**