Okay, here is a beginner Dart problem focused on classes, objects, inheritance, and polymorphism, along with its solution.

---

**Problem Description: Vehicle Hierarchy**

You are tasked with modeling a simple vehicle hierarchy using Dart classes, focusing on inheritance and polymorphism.

**Requirements:**

1.  **Create a `Car` Class:**
    *   Define a class named `Car`.
    *   It should have three public attributes: `make` (String), `model` (String), and `year` (int).
    *   Create a constructor that initializes these three attributes.
    *   Add a method named `displayInfo()` that prints the car's make, model, and year in a readable format (e.g., "Make: [make], Model: [model], Year: [year]").

2.  **Create an `ElectricCar` Class:**
    *   Define a class named `ElectricCar` that **inherits** from the `Car` class.
    *   Add an additional public attribute specific to electric cars: `batteryCapacity` (double, representing kWh).
    *   Create a constructor for `ElectricCar` that initializes `make`, `model`, `year`, and `batteryCapacity`. Remember to call the superclass constructor (`super()`) to initialize the inherited attributes.
    *   **Override** the `displayInfo()` method in the `ElectricCar` class. This overridden method should first call the `super.displayInfo()` method to print the basic car details and *then* print the `batteryCapacity` on a new line (e.g., "Battery Capacity: [capacity] kWh"). This demonstrates polymorphism.

3.  **Demonstrate Usage:**
    *   In your `main` function:
        *   Create an instance (object) of the `Car` class (e.g., a petrol car).
        *   Create an instance (object) of the `ElectricCar` class.
        *   Call the `displayInfo()` method on both objects. Observe how the output differs due to the overridden method in `ElectricCar`.

---

**Dart Solution Code:**

```dart
// Base class: Car
class Car {
  String make;
  String model;
  int year;

  // Constructor for Car
  Car(this.make, this.model, this.year);

  // Method to display car information
  void displayInfo() {
    print('Make: $make, Model: $model, Year: $year');
  }
}

// Derived class: ElectricCar inherits from Car
class ElectricCar extends Car {
  double batteryCapacity; // Additional attribute specific to ElectricCar

  // Constructor for ElectricCar
  // It takes all parameters needed for Car plus its own specific parameter.
  // It uses 'super()' to call the constructor of the parent class (Car).
  ElectricCar(String make, String model, int year, this.batteryCapacity)
      : super(make, model, year);

  // Override the displayInfo method to include battery capacity
  @override // Annotation indicating method override (good practice)
  void displayInfo() {
    super.displayInfo(); // Call the displayInfo method of the parent class (Car)
    print('Battery Capacity: ${batteryCapacity} kWh'); // Add specific electric car info
  }
}

void main() {
  // Create an instance of the Car class
  Car myRegularCar = Car('Honda', 'Civic', 2019);

  // Create an instance of the ElectricCar class
  ElectricCar myEV = ElectricCar('Tesla', 'Model Y', 2023, 82.0);

  print('--- Regular Car Details ---');
  myRegularCar.displayInfo(); // Calls the displayInfo method from the Car class

  print('\n--- Electric Car Details ---');
  myEV.displayInfo(); // Calls the overridden displayInfo method from the ElectricCar class

  // Example of Polymorphism using a Car reference type
  print('\n--- Polymorphism Demonstration ---');
  Car anotherCar = ElectricCar('Nissan', 'Leaf', 2021, 40.0);
  // Even though 'anotherCar' is typed as 'Car', it holds an 'ElectricCar' object.
  // The overridden method from ElectricCar is executed.
  anotherCar.displayInfo();
}
```

**Explanation of Concepts Demonstrated:**

1.  **Class (`Car`, `ElectricCar`):** Blueprints for creating objects.
2.  **Object (`myRegularCar`, `myEV`, `anotherCar`):** Instances of the classes.
3.  **Attributes (`make`, `model`, `year`, `batteryCapacity`):** Data members of the classes.
4.  **Constructor:** Special methods used to initialize objects (`Car(...)`, `ElectricCar(...)`).
5.  **Inheritance (`ElectricCar extends Car`):** `ElectricCar` inherits properties (`make`, `model`, `year`) and methods (`displayInfo`) from `Car`. The `super()` keyword in the `ElectricCar` constructor calls the `Car` constructor.
6.  **Polymorphism (`@override displayInfo()`):** The `displayInfo` method behaves differently depending on the actual type of the object (`Car` or `ElectricCar`). When `displayInfo()` is called on an `ElectricCar` object (even if referenced by a `Car` variable like `anotherCar`), the overridden version in `ElectricCar` is executed. The `super.displayInfo()` call within the overridden method allows reusing the parent class's implementation.