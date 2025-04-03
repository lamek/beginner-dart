---
title: Shape Hierarchy and Polymorphism
category: Classes and Objects
difficulty: Beginner
focus:
  - class
  - abstract class
  - extends (inheritance)
  - @override
  - polymorphism
  - constructor
  - final properties
  - abstract methods
  - double
  - dart:math
  - List<T>
  - main function
  - print
---

# Shape Hierarchy and Polymorphism

## Problem Description

Practice basic Object-Oriented Programming (OOP) concepts in Dart, specifically inheritance and polymorphism, by creating a hierarchy of geometric shapes and calculating their areas.

## Requirements

1.  **Create a Base Class (`Shape`):**
    *   Define an `abstract` class named `Shape`.
    *   Include a single `abstract` method declaration within `Shape`: `double area();`. This method should not have an implementation in the base class.
2.  **Create a Subclass (`Circle`):**
    *   Define a class `Circle` that `extends` the `Shape` class.
    *   Add a `final` property `radius` of type `double`.
    *   Implement a constructor for `Circle` that initializes the `radius`.
    *   `override` the `area()` method to calculate and return the area of the circle (Area = π * radius²). You will need to import `dart:math` for `pi`.
3.  **Create another Subclass (`Rectangle`):**
    *   Define a class `Rectangle` that also `extends` `Shape`.
    *   Add two `final` properties: `width` and `height`, both of type `double`.
    *   Implement a constructor for `Rectangle` that initializes `width` and `height`.
    *   `override` the `area()` method to calculate and return the area of the rectangle (Area = width * height).
4.  **Demonstrate Usage (`main` function):**
    *   In the `main` function, create at least one instance of `Circle` and one instance of `Rectangle`.
    *   Call the `area()` method on each object.
    *   Print the calculated areas to the console, clearly identifying which shape's area is being displayed.
    *   *(Optional but recommended)*: Demonstrate polymorphism by creating a `List<Shape>` containing instances of both `Circle` and `Rectangle`, then iterate through the list and print the area of each shape.

## Focus

This problem focuses on:

*   Defining `abstract class` and concrete `class`.
*   Using `extends` for inheritance.
*   Declaring `abstract` methods.
*   Overriding methods using `@override`.
*   Understanding and demonstrating polymorphism (treating objects of different subclasses through a common base class reference).
*   Creating constructors.
*   Using `final` properties.
*   Working with `double` data type.
*   Importing libraries (`dart:math`).
*   Using `List<T>` with objects of related types.
*   Basic console output (`print`).

## Boilerplate Code

```dart
import 'dart:math'; // Needed for pi

// 1. Define the abstract base class 'Shape' here
// abstract class Shape { ... }

// 2. Define the 'Circle' subclass here
// class Circle extends Shape { ... }

// 3. Define the 'Rectangle' subclass here
// class Rectangle extends Shape { ... }


void main() {
  // 4. Demonstrate Usage
  // Create instances of Circle and Rectangle
  // ...

  // Call area() on the instances and print the results
  // ...

  // Optional: Demonstrate polymorphism with a List<Shape>
  // ...
}
```
```