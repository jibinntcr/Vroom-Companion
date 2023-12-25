// Define the Car class with properties and methods.
class Car {
  String name;
  double price;

  // Constructor for the Car class.
  Car(this.name, this.price);

  // Method to change the price of the car.
  void changePrice(double newPrice) {
    price = newPrice;
    print("$name price has been changed to \$${price.toStringAsFixed(2)}");
  }
}

// Define the Person class with properties and methods.
class Person {
  String name;
  List<Car> ownedCars = [];
  double moneyLeft;

  // Constructor for the Person class.
  Person(this.name, this.moneyLeft);

  // Method to buy a car and add it to the list of owned cars.
  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      moneyLeft -= car.price;
      ownedCars.add(car);
      print("$name bought a ${car.name} for \$${car.price.toStringAsFixed(2)}");
    } else {
      print("$name does not have enough money to buy ${car.name}");
    }
  }

  // Method to sell a car and remove it from the list of owned cars.
  void sellCar(Car car) {
    if (ownedCars.contains(car)) {
      ownedCars.remove(car);
      moneyLeft += car.price;
      print("$name sold the ${car.name} for \$${car.price.toStringAsFixed(2)}");
    } else {
      print("$name does not own ${car.name}");
    }
  }
}

void main() {
  // Create instances of the Car class.
  Car car1 = Car("Toyota Camry", 20000.0);
  Car car2 = Car("Honda Civic", 18000.0);

  // Create instances of the Person class.
  Person person1 = Person("Alice", 30000.0);
  Person person2 = Person("Bob", 25000.0);

  // Perform buying and selling operations.
  person1.buyCar(car1);
  person2.buyCar(car2);
  person1.sellCar(car2);

  // Display the final state of each person's owned cars and money left.
  print("\nFinal state of ownership:");
  print("${person1.name} owns: ${person1.ownedCars.map((car) => car.name).join(', ')}");
  print("${person2.name} owns: ${person2.ownedCars.map((car) => car.name).join(', ')}");
  print("${person1.name}'s money left: \$${person1.moneyLeft.toStringAsFixed(2)}");
  print("${person2.name}'s money left: \$${person2.moneyLeft.toStringAsFixed(2)}");
}
