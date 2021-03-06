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

  Vehicle({
    this.make,
    this.model,
    this.manufactureYear,
    this.color,
  });
}

void main() {
  Vehicle car = Vehicle(
      make: "Honda", model: "Civic", manufactureYear: 2010, color: "red");
  print(car.make); // output - Honda
  print(car.model); // output - Civic
  car.age = 2019;
  print(car.age); // output - 9
}
