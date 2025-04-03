Okay, here is the "Static Geometric Calculator" problem formatted using the provided template.

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

---

## Solution

```dart
// Import the math library to use the value of pi
import 'dart:math';

// Define the Geometry class
class Geometry {
  // Static method to calculate the area of a circle
  // It takes the radius as input and returns the area.
  // Can be called directly on the class: Geometry.calculateCircleArea(radius)
  static double calculateCircleArea(double radius) {
    // Ensure radius is non-negative
    if (radius < 0) {
      print("Warning: Radius cannot be negative. Returning 0.");
      return 0.0;
    }
    // Formula: pi * r^2
    return pi * radius * radius;
  }

  // Static method to calculate the area of a rectangle
  // It takes width and height as input and returns the area.
  // Can be called directly on the class: Geometry.calculateRectangleArea(width, height)
  static double calculateRectangleArea(double width, double height) {
    // Ensure dimensions are non-negative
    if (width < 0 || height < 0) {
      print("Warning: Width and Height cannot be negative. Returning 0.");
      return 0.0;
    }
    // Formula: width * height
    return width * height;
  }
}

void main() {
  // Define sample values
  double circleRadius = 5.0;
  double rectangleWidth = 4.0;
  double rectangleHeight = 6.0;

  // --- Usage of Static Methods ---
  // Notice we are calling the methods directly on the Geometry class,
  // without creating an instance like `Geometry calculator = Geometry();`

  // Calculate circle area using the static method
  double areaOfCircle = Geometry.calculateCircleArea(circleRadius);

  // Calculate rectangle area using the static method
  double areaOfRectangle = Geometry.calculateRectangleArea(rectangleWidth, rectangleHeight);

  // Print the results
  print("--- Geometric Calculations ---");
  print("Radius of the circle: $circleRadius");
  print("Calculated Area of the circle: $areaOfCircle");
  print(""); // Add a blank line for separation
  print("Width of the rectangle: $rectangleWidth");
  print("Height of the rectangle: $rectangleHeight");
  print("Calculated Area of the rectangle: $areaOfRectangle");

  // Example with invalid input
  print("\n--- Testing with invalid input ---");
  double negativeRadiusArea = Geometry.calculateCircleArea(-2.0);
  print("Area with negative radius (-2.0): $negativeRadiusArea");
}
```