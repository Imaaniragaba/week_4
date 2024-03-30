// Define an interface
abstract class Printable {
  void printInfo();
}

// Define a base class
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('$name makes a sound.');
  }
}

// Define a derived class that inherits from Animal and implements Printable
class Dog extends Animal implements Printable {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void speak() {
    print('$name barks.');
  }

  @override
  void printInfo() {
    print('Name: $name, Breed: $breed');
  }
}

void main() {
  // Create an instance of Dog
  final dogInstance = Dog('Buddy', 'Golden Retriever');

  // Initialize data from a file (assuming the file contains dog names and breeds)
  final dogData = [
    'Max, Labrador',
    'Rocky, German Shepherd',
    'Heko, Mastiff'
  ];

  for (final data in dogData) {
    final parts = data.split(',');
    final name = parts[0].trim();
    final breed = parts[1].trim();
    final dog = Dog(name, breed);
    dog.printInfo();
  }

  // Demonstrate the use of a loop
  for (var i = 0; i < 3; i++) {
    dogInstance.speak();
  }

  // Print a success message
  print('Program executed successfully!');
}
