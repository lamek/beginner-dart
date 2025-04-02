Okay, here is a beginner Dart problem based on the description, followed by its solution.

---

**Problem Description**

**Problem: Define and Use a Simple Car Class**

**Objective:** Learn the basics of creating classes, defining properties, adding constructors and methods, and instantiating objects in Dart.

**Task:**

1.  Define a Dart class named `Car`.
2.  Give the `Car` class three properties (instance variables):
    *   `make` of type `String`
    *   `model` of type `String`
    *   `year` of type `int`
3.  Add a constructor to the `Car` class that accepts values for `make`, `model`, and `year` and initializes the corresponding properties.
4.  Add a method named `displayInfo` to the `Car` class. This method should not return anything (`void`) and should print the car's details to the console in a user-friendly format (e.g., "Car Details: \[Year] \[Make] \[Model]").
5.  In your `main` function:
    *   Create an instance (object) of the `Car` class. Use "Tesla", "Model 3", and 2023 as the make, model, and year, respectively.
    *   Call the `displayInfo()` method on the created `Car` object.

**Expected Output:**

```
Car Details: 2023 Tesla Model 3
```

---

**Solution Code**

```dart
// --- Solution Code ---

// 1. Define the Car class
class Car {
  // 2. Define properties
  String make;
  String model;
  int year;

  // 3. Add a constructor
  // This uses Dart's shorthand syntax to initialize properties directly.
  Car(this.make, this.model, this.year);

  // 4. Add the displayInfo method
  void displayInfo() {
    // Prints the car details using string interpolation
    print('Car Details: $year $make $model');
  }
}

void main() {
  // 5. Create an instance (object) of the Car class
  // Instantiate the Car class with specific values
  Car myCar = Car('Tesla', 'Model 3', 2023);

  // 6. Call the displayInfo() method on the created Car object
  myCar.displayInfo();

  // Example of creating and displaying another car (optional)
  // Car anotherCar = Car('Ford', 'Mustang', 1969);
  // anotherCar.displayInfo(); // Output: Car Details: 1969 Ford Mustang
}
```

---