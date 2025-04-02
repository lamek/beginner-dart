Okay, here is a beginner Dart problem focusing on classes, objects, inheritance, and polymorphism, followed by its solution.

---

**Problem Description**

**Topic:** Dart Classes and Objects (Inheritance)

**Goal:** Understand and implement basic class inheritance in Dart.

**Task:**

1.  **Create a Base Class `Vehicle`:**
    *   This class should have two `String` properties: `make` and `model`.
    *   It should have a constructor that accepts `make` and `model` to initialize the properties.
    *   It should have a method `displayInfo()` that prints the `make` and `model` of the vehicle to the console (e.g., "Make: Toyota, Model: Corolla").

2.  **Create a Subclass `Car`:**
    *   This class should inherit from `Vehicle`.
    *   It should add an integer property: `numberOfDoors`.
    *   It should have a constructor that accepts `make`, `model`, and `numberOfDoors`. This constructor must call the parent `Vehicle` constructor to initialize `make` and `model`.
    *   Override the `displayInfo()` method to print the `make`, `model`, and `numberOfDoors` (e.g., "Car - Make: Honda, Model: Civic, Doors: 4").

3.  **Create a Subclass `Motorcycle`:**
    *   This class should inherit from `Vehicle`.
    *   It should add a boolean property: `hasSidecar`.
    *   It should have a constructor that accepts `make`, `model`, and `hasSidecar`. This constructor must call the parent `Vehicle` constructor.
    *   Override the `displayInfo()` method to print the `make`, `model`, and whether it `hasSidecar` (e.g., "Motorcycle - Make: Yamaha, Model: MT-07, Has Sidecar: false").

4.  **Demonstrate in `main`:**
    *   Create an instance (object) of `Car`.
    *   Create an instance (object) of `Motorcycle`.
    *   Call the `displayInfo()` method on each object to show their details on the console.

---

**Solution Code**

```dart
// Base Class: Vehicle
class Vehicle {
  String make;
  String model;

  // Constructor for Vehicle
  Vehicle(this.make, this.model);

  // Method to display basic vehicle info
  void displayInfo() {
    print('Make: $make, Model: $model');
  }
}

// Subclass: Car inheriting from Vehicle
class Car extends Vehicle {
  int numberOfDoors;

  // Constructor for Car
  // It calls the superclass (Vehicle) constructor using 'super()'
  Car(String make, String model, this.numberOfDoors) : super(make, model);

  // Override the displayInfo method to include car-specific details
  @override
  void displayInfo() {
    print('Car - Make: $make, Model: $model, Doors: $numberOfDoors');
  }
}

// Subclass: Motorcycle inheriting from Vehicle
class Motorcycle extends Vehicle {
  bool hasSidecar;

  // Constructor for Motorcycle
  // It calls the superclass (Vehicle) constructor using 'super()'
  Motorcycle(String make, String model, this.hasSidecar) : super(make, model);

  // Override the displayInfo method to include motorcycle-specific details
  @override
  void displayInfo() {
    print('Motorcycle - Make: $make, Model: $model, Has Sidecar: $hasSidecar');
  }
}

// Main function to demonstrate the classes and objects
void main() {
  // Create a Car object
  Car myCar = Car('Honda', 'Civic', 4);

  // Create a Motorcycle object
  Motorcycle myMotorcycle = Motorcycle('Yamaha', 'MT-07', false);

  print('--- Vehicle Details ---');

  // Display Car details using its overridden displayInfo method
  myCar.displayInfo(); // Output: Car - Make: Honda, Model: Civic, Doors: 4

  // Display Motorcycle details using its overridden displayInfo method
  myMotorcycle.displayInfo(); // Output: Motorcycle - Make: Yamaha, Model: MT-07, Has Sidecar: false

  // You could also treat them as base Vehicle types (Polymorphism example)
  // List<Vehicle> vehicles = [myCar, myMotorcycle];
  // print('\n--- Displaying via Vehicle List (Polymorphism) ---');
  // for (var vehicle in vehicles) {
  //   vehicle.displayInfo(); // Calls the appropriate overridden method
  // }
}
```

---