---
title: Static Geometric Calculator
category: Classes and Methods
difficulty: Beginner
focus:
  - Class Definition
  - Static Methods
  - double
  - Method Parameters and Return Types
  - `import` statement (`dart:math`)
  - Basic Arithmetic
  - Console Output (`print`)
---

# Static Geometric Calculator

## Problem Description

Create a simple geometric calculator using Dart that utilizes static methods within a class. This means you will call the calculation methods directly on the class itself, without needing to create an instance (object) of the class.

## Requirements

1.  **Define Class:** Create a class named `Geometry`.
2.  **Static Methods:** Implement two `static` methods inside the `Geometry` class:
    *   `calculateCircleArea(double radius)`:
        *   Accepts a `double` representing the circle's radius.
        *   Returns a `double` representing the calculated area.
        *   Use the formula: Area = π * radius²
        *   Use the `pi` constant from the `dart:math` library (requires an `import` statement).
    *   `calculateRectangleArea(double width, double height)`:
        *   Accepts two `double` arguments: `width` and `height`.
        *   Returns a `double` representing the calculated area.
        *   Use the formula: Area = width * height.
3.  **No Instantiation:** The design should emphasize that the `Geometry` class is used directly (e.g., `Geometry.calculateCircleArea(...)`) and doesn't need to be instantiated (`var calc = Geometry();`).
4.  **Demonstrate Usage:** In the `main` function:
    *   Define sample values for a circle's radius (e.g., `5.0`) and a rectangle's width and height (e.g., `4.0`, `6.0`).
    *   Call the static methods using the class name (`Geometry.methodName(...)`) to calculate the areas.
    *   Print the calculated areas to the console with clear, descriptive messages (e.g., "Area of the circle with radius X: Y").

## Focus

This problem focuses on:

*   Defining a `class`.
*   Understanding and using the `static` keyword for methods.
*   Working with the `double` data type.
*   Defining methods with parameters and return values.
*   Importing libraries (`dart:math`).
*   Performing basic arithmetic operations.
*   Calling static methods.
*   Printing output to the console (`print`).

## Boilerplate Code

```dart
// Import the math library
import 'dart:math';

// 1. Define the Geometry class
class Geometry {
  // 2a. Implement static method calculateCircleArea
  // Hint: Use 'static double methodName(parameters)'
  // Hint: Use 'pi' from the math library
  // static double calculateCircleArea(...) { ... }

  // 2b. Implement static method calculateRectangleArea
  // static double calculateRectangleArea(...) { ... }

}

void main() {
  // 4. Demonstrate Usage
  // Define sample radius, width, height
  double radius = 5.0;
  // ... other variables

  // Call the static methods
  // double circleArea = Geometry.calculateCircleArea(...);
  // ... other calculations

  // Print the results
  // print("...");
  // ... other print statements
}
```