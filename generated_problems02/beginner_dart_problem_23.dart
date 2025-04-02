Okay, here is a beginner Dart problem focusing on classes, objects, and inheritance, followed by its solution.

---

**Problem Description**

**Title:** Basic Vehicle Inheritance

**Objective:** Practice creating classes, defining properties, using constructors, implementing inheritance, and creating objects in Dart.

**Tasks:**

1.  **Create a Base Class `Vehicle`:**
    *   Define a class named `Vehicle`.
    *   Add two `String` properties: `make` and `model`.
    *   Create a constructor for `Vehicle` that accepts `make` and `model` as arguments and initializes the corresponding properties.

2.  **Create a Subclass `Car`:**
    *   Define a class named `Car` that **inherits** from the `Vehicle` class.
    *   Create a constructor for `Car` that accepts `make` and `model`. This constructor should call the constructor of the parent class (`Vehicle`) to initialize the inherited properties.

3.  **Create a Subclass `Motorcycle`:**
    *   Define a class named `Motorcycle` that **inherits** from the `Vehicle` class.
    *   Create a constructor for `Motorcycle` that accepts `make` and `model`. This constructor should also call the constructor of the parent class (`Vehicle`).

4.  **Implement the `main` Function:**
    *   Inside the `main` function:
        *   Create an instance (object) of the `Car` class (e.g., make: "Toyota", model: "Camry").
        *   Create an instance (object) of the `Motorcycle` class (e.g., make: "Honda", model: "CBR500R").
        *   Print the `make` and `model` of the `Car` object to the console.
        *   Print the `make` and `model` of the `Motorcycle` object to the console.

---

**Solution Code**

```dart
// --- Solution Code ---

// 1. Base Class Vehicle
class Vehicle {
  String make;
  String model;

  // Constructor for Vehicle
  Vehicle(this.make, this.model);

  // Optional: A method to display info (though direct access is used in main)
  void displayInfo() {
    print('Make: $make, Model: $model');
  }
}

// 2. Subclass Car inheriting from Vehicle
class Car extends Vehicle {
  // Constructor for Car
  // It takes make and model, and passes them to the Vehicle constructor using 'super'
  Car(String make, String model) : super(make, model);
}

// 3. Subclass Motorcycle inheriting from Vehicle
class Motorcycle extends Vehicle {
  // Constructor for Motorcycle
  // It takes make and model, and passes them to the Vehicle constructor using 'super'
  Motorcycle(String make, String model) : super(make, model);
}

// 4. Main function to create objects and display properties
void main() {
  // Create an instance of Car
  var myCar = Car('Toyota', 'Camry');

  // Create an instance of Motorcycle
  var myMotorcycle = Motorcycle('Honda', 'CBR500R');

  // Print Car details
  print('Car Details:');
  print('  Make: ${myCar.make}');   // Accessing inherited property 'make'
  print('  Model: ${myCar.model}');  // Accessing inherited property 'model'
  // Or using the displayInfo method:
  // myCar.displayInfo();

  print(''); // Add a blank line for separation

  // Print Motorcycle details
  print('Motorcycle Details:');
  print('  Make: ${myMotorcycle.make}'); // Accessing inherited property 'make'
  print('  Model: ${myMotorcycle.model}'); // Accessing inherited property 'model'
  // Or using the displayInfo method:
  // myMotorcycle.displayInfo();
}

/*
Expected Output:

Car Details:
  Make: Toyota
  Model: Camry

Motorcycle Details:
  Make: Honda
  Model: CBR500R

*/
```