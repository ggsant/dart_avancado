# Getter & Setter

Getters e setters são métodos especiais que **fornecem acesso de leitura e gravação às propriedades de um objeto.** Cada variável de instância de sua classe tem um getter implícito e um setter, se necessário. No dart, você pode levar isso ainda mais longe implementando seus próprios getters e setters. Se você já teve alguma experiência em Programação Orientada a Objetos, se sentirá em casa. Vamos começar.

Em OOP, uma classe atua como um Tipo de Dados Abstrato (ADT) para uma instância dessa classe (Objeto). No dardo, esse também é o caso. A sintaxe básica para uma classe é:

                        class className {
                            fields;
                            getters/setters
                            constructor
                            methods/functions
                        }

Os getters e setters também podem ser colocados após o construtor. Agora vamos criar uma classe e instanciá-la.

                class Vehicle {
                    String make;
                    String model;
                    int manufactureYear;
                    int vehicleAge;
                    String color;

                    int get age {
                        return vehicleAge;
                    }

                    void set age(int currentYear) {
                        vehicleAge = currentYear - manufactureYear;
                    }

                    // We can also eliminate the setter and just use a getter.
                    //int get age {
                    //  return DateTime.now().year - manufactureYear;
                    //}

                    Vehicle({this.make,this.model,this.manufactureYear,this.color,});
                }

A idade aqui é tanto um getter quanto um setter. Vamos ver como podemos usá-lo.

            void main() {
                Vehicle car = 
                Vehicle(make:"Honda",model:"Civic",manufactureYear:2010,color:"red");
                print(car.make); // output - Honda
                print(car.model); // output - Civic
                car.age = 2019;
                print(car.age); // output - 9

            }

Uma das minhas maneiras favoritas de usar getters é obter um Mapde um objeto.

            void main() {
                Vehicle car = Vehicle(make:"Honda",model:"Civic",manufactureYear:2010,color:"red");
                print(car.map); // output - {make: Honda, model: Civic, manufactureYear: 2010, color: red}
                }

                class Vehicle {
                String make;
                String model;
                int manufactureYear;
                int vehicleAge;
                String color;

                Map<String,dynamic> get map {
                    return {
                    "make": make,
                    "model": model,
                    "manufactureYear":manufactureYear,
                    "color": color,
                    };
                }

                int get age {
                    return DateTime.now().year - manufactureYear;
                }

                void set age(int currentYear) {
                    vehicleAge = currentYear - manufactureYear;
                }

                Vehicle({this.make,this.model,this.manufactureYear,this.color,});
            }



**Referências - Flutter Brasil**

