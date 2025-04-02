Okay, here is a beginner Dart problem focusing on classes, inheritance, and basic polymorphism, along with its solution.

---

**Problem Description**

**Objective:** Practice creating classes, using inheritance to establish relationships between them, and demonstrating polymorphism by calling a common method on different object types.

**Task:**

1.  **Create a Base Class:**
    *   Define a class named `Vehicle`.
    *   It should have two properties: `make` (String) and `model` (String).
    *   Create a constructor for `Vehicle` that accepts `make` and `model` as arguments and initializes the properties.
    *   Add a method `displayInfo()` to the `Vehicle` class that prints the `make` and `model` to the console in a user-friendly format (e.g., "Make: [make], Model: [model]").

2.  **Create Subclasses:**
    *   Define a class named `Car` that **inherits** from `Vehicle`.
    *   Add an additional property specific to cars: `numberOfDoors` (int).
    *   Create a constructor for `Car` that accepts `make`, `model`, and `numberOfDoors`. This constructor should call the parent (`Vehicle`) constructor to initialize `make` and `model`.
    *   **Override** the `displayInfo()` method in the `Car` class to print the `make`, `model`, AND `numberOfDoors` (e.g., "Car - Make: [make], Model: [model], Doors: [numberOfDoors]").
    *   Define a class named `Motorcycle` that **inherits** from `Vehicle`.
    *   Add an additional property specific to motorcycles: `hasSidecar` (bool).
    *   Create a constructor for `Motorcycle` that accepts `make`, `model`, and `hasSidecar`, calling the parent constructor appropriately.
    *   **Override** the `displayInfo()` method in the `Motorcycle` class to print the `make`, `model`, AND `hasSidecar` status (e.g., "Motorcycle - Make: [make], Model: [model], Has Sidecar: [true/false]").

3.  **Demonstrate Usage:**
    *   In the `main` function:
        *   Create an instance of `Car` (e.g., a Toyota Camry with 4 doors).
        *   Create an instance of `Motorcycle` (e.g., a Harley-Davidson with no sidecar).
        *   Call the `displayInfo()` method on both the `Car` object and the `Motorcycle` object to show their details.
        *   *(Optional Polymorphism Bonus)*: Create a `List<Vehicle>` and add both your `Car` and `Motorcycle` instances to it. Iterate through the list and call `displayInfo()` on each element, observing that the correct version of the method is called for each object type.

---

**Solution Code**

```dart
// Base Class
class Vehicle {
  String make;
  String model;

  // Constructor
  Vehicle(this.make, this.model);

  // Method to display vehicle info
  void displayInfo() {
    print('Make: $make, Model: $model');
  }
}

// Subclass: Car
class Car extends Vehicle {
  int numberOfDoors;

  // Constructor for Car
  // Calls the superclass (Vehicle) constructor using ': super()'
  Car(String make, String model, this.numberOfDoors) : super(make, model);

  // Override the displayInfo method
  @override // Annotation indicating method override (good practice)
  void displayInfo() {
    print('Car - Make: $make, Model: $model, Doors: $numberOfDoors');
  }
}

// Subclass: Motorcycle
class Motorcycle extends Vehicle {
  bool hasSidecar;

  // Constructor for Motorcycle
  Motorcycle(String make, String model, this.hasSidecar) : super(make, model);

  // Override the displayInfo method
  @override
  void displayInfo() {
    print('Motorcycle - Make: $make, Model: $model, Has Sidecar: $hasSidecar');
  }
}

// Main function to demonstrate usage
void main() {
  // Create instances of the subclasses
  Car myCar = Car('Toyota', 'Camry', 4);
  Motorcycle myMotorcycle = Motorcycle('Harley-Davidson', 'Iron 883', false);
  Car anotherCar = Car('Honda', 'Civic', 2); // Another car instance

  print('--- Individual Vehicle Details ---');
  // Call the specific displayInfo methods
  myCar.displayInfo();        // Calls Car's displayInfo
  myMotorcycle.displayInfo(); // Calls Motorcycle's displayInfo
  anotherCar.displayInfo();   // Calls Car's displayInfo

  print('\n--- Vehicle Details from List (Polymorphism) ---');
  // Create a list of Vehicle type
  List<Vehicle> vehicles = [myCar, myMotorcycle, anotherCar];

  // Iterate and call displayInfo on each element
  // Dart automatically calls the correct overridden method for each object
  for (var vehicle in vehicles) {
    vehicle.displayInfo();
  }
}
```

**Explanation:**

1.  **`Vehicle`**: The base class defines the common properties (`make`, `model`) and a base `displayInfo` method.
2.  **`Car` and `Motorcycle`**: These classes `extend Vehicle`, inheriting its properties and methods. They add their own specific properties (`numberOfDoors`, `hasSidecar`).
3.  **Constructors**: The subclass constructors take all necessary parameters and use `: super(make, model)` to pass the common ones up to the `Vehicle` constructor.
4.  **`@override`**: This annotation is used before the `displayInfo` methods in the subclasses. It's good practice to indicate that you are intentionally replacing (overriding) a method from the parent class.
5.  **Polymorphism**: In `main`, when `myCar.displayInfo()` is called, the `Car` version runs. When `myMotorcycle.displayInfo()` is called, the `Motorcycle` version runs. The bonus section explicitly shows polymorphism: even though the `vehicles` list is typed as `List<Vehicle>`, when `vehicle.displayInfo()` is called inside the loop, Dart determines the *actual* type of the object (`Car` or `Motorcycle`) at runtime and executes the appropriate overridden method.