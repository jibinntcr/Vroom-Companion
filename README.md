# Vroom-Companion
## Car Class
The `Car` class represents a car and has the following properties and methods:
- `name`: Represents the name of the car.
- `price`: Represents the price of the car.
- `changePrice(newPrice)`: Method used to change the price of the car.

## Person Class
The `Person` class represents a person participating in the platform and has the following properties and methods:
- `name`: Represents the name of the person.
- `ownedCars`: A list that keeps track of cars owned by the person.
- `moneyLeft`: Represents the amount of money the person has.
- `buyCar(car)`: Method to purchase a car and add it to the list of owned cars.
- `sellCar(car)`: Method to sell a car and remove it from the list of owned cars.

## Usage Example
```dart
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

// Display the final state of ownership and money left.
print("${person1.name} owns: ${person1.ownedCars.map((car) => car.name).join(', ')}");
print("${person2.name} owns: ${person2.ownedCars.map((car) => car.name).join(', ')}");
print("${person1.name}'s money left: \$${person1.moneyLeft.toStringAsFixed(2)}");
print("${person2.name}'s money left: \$${person2.moneyLeft.toStringAsFixed(2)}");
