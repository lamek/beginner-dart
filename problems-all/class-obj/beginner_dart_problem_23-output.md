```markdown
---
title: Vehicle Inheritance Hierarchy
category: Object-Oriented Programming
difficulty: Beginner
focus:
  - class
  - extends (Inheritance)
  - Constructors
  - super()
  - Method Overriding (@override)
  - String
  - int
  - bool
  - Object Instantiation
  - Method Calls
---

# Vehicle Inheritance Hierarchy

## Problem Description

This problem focuses on understanding and implementing basic class inheritance in Dart. You will create a base class `Vehicle` and two subclasses, `Car` and `Motorcycle`, each inheriting properties and methods from `Vehicle` while adding their own specific attributes and overriding behavior.

## Requirements

1.  **Create Base Class `Vehicle`:**
    *   Define a class named `Vehicle`.
    *   Add two `String` properties: `make` and `model`.
    *   Create a constructor that accepts `make` and `model` arguments to initialize the properties.
    *   Implement a method `displayInfo()` that prints the `make` and `model` to the console (e.g., "Make: Toyota, Model: Corolla").

2.  **Create Subclass `Car`:**
    *   Define a class named `Car` that inherits from `Vehicle` using the `extends` keyword.
    *   Add an `int` property: `numberOfDoors`.
    *   Create a constructor that accepts `make`, `model`, and `numberOfDoors`.
    *   Use the `super()` initializer to call the parent `Vehicle` constructor, passing the `make` and `model`.
    *   Override the `displayInfo()` method using the `@override` annotation. This method should print the `make`, `model`, and `numberOfDoors` (e.g., "Car - Make: Honda, Model: Civic, Doors: 4").

3.  **Create Subclass `Motorcycle`:**
    *   Define a class named `Motorcycle` that inherits from `Vehicle`.
    *   Add a `bool` property: `hasSidecar`.
    *   Create a constructor that accepts `make`, `model`, and `hasSidecar`.
    *   Use the `super()` initializer to call the parent `Vehicle` constructor, passing the `make` and `model`.
    *   Override the `displayInfo()` method using the `@override` annotation. This method should print the `make`, `model`, and whether it `hasSidecar` (e.g., "Motorcycle - Make: Yamaha, Model: MT-07, Has Sidecar: false").

4.  **Demonstrate in `main`:**
    *   In the `main` function, create an instance (object) of the `Car` class with sample data.
    *   Create an instance (object) of the `Motorcycle` class with sample data.
    *   Call the `displayInfo()` method on the `Car` object.
    *   Call the `displayInfo()` method on the `Motorcycle` object.
    *   Observe the output, confirming that the overridden methods are called correctly.

## Focus

This problem focuses on:

*   Defining classes (`class`).
*   Implementing inheritance (`extends`).
*   Defining constructors.
*   Calling superclass constructors (`super()`).
*   Overriding methods (`@override`).
*   Using basic data types (`String`, `int`, `bool`).
*   Creating objects (instances) of classes.
*   Calling methods on objects.
*   Basic console output (`print`).

## Boilerplate Code

```dart
// 1. Create Base Class `Vehicle`
// class Vehicle {
//   // Properties
//   // Constructor
//   // displayInfo method
// }

// 2. Create Subclass `Car`
// class Car extends Vehicle {
//   // Property
//   // Constructor (use super)
//   // Override displayInfo
// }

// 3. Create Subclass `Motorcycle`
// class Motorcycle extends Vehicle {
//   // Property
//   // Constructor (use super)
//   // Override displayInfo
// }

void main() {
  // 4. Demonstrate in `main`
  print('--- Vehicle Details ---');

  // Create instances
  // Car myCar = ...
  // Motorcycle myMotorcycle = ...

  // Call displayInfo methods
  // myCar.displayInfo();
  // myMotorcycle.displayInfo();
}
```
```