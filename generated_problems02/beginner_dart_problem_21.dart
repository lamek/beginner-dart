Okay, here is a beginner Dart problem focused on classes, inheritance, and polymorphism, along with its solution.

---

## Problem Description: Shape Area Calculator

**Goal:**
Your task is to model a simple hierarchy of geometric shapes using Dart's object-oriented features, specifically inheritance and polymorphism. You need to calculate and print the area of different shapes.

**Requirements:**

1.  **Base Class (`Shape`):**
    *   Create an `abstract` class named `Shape`.
    *   This class should have a single `abstract` method named `area()` that returns a `double` and takes no arguments. Abstract methods don't have a body ({}) in the base class; they just define the signature.

2.  **Subclass 1 (`Circle`):**
    *   Create a class named `Circle` that `extends` the `Shape` class.
    *   It should have a `final` property `radius` of type `double`.
    *   Implement a constructor that accepts the `radius` and initializes the property.
    *   `@override` the `area()` method to calculate and return the area of the circle (Area = π * radius²). You can use `pi` from the `dart:math` library.

3.  **Subclass 2 (`Rectangle`):**
    *   Create a class named `Rectangle` that `extends` the `Shape` class.
    *   It should have two `final` properties: `width` and `height`, both of type `double`.
    *   Implement a constructor that accepts `width` and `height` and initializes the properties.
    *   `@override` the `area()` method to calculate and return the area of the rectangle (Area = width * height).

4.  **Main Function (`main`):**
    *   In the `main` function:
        *   Create an instance (object) of `Circle` with a specific radius (e.g., 5.0).
        *   Create an instance (object) of `Rectangle` with a specific width and height (e.g., 4.0 and 6.0).
        *   Call the `area()` method on both objects.
        *   Print the calculated area for each shape in a user-friendly format (e.g., "Area of Circle: X", "Area of Rectangle: Y").

---

## Dart Solution Code

```dart
import 'dart:math'; // Import the math library to use 'pi'

// 1. Base Abstract Class: Shape
abstract class Shape {
  // Abstract method: must be implemented by subclasses
  // Defines the contract: any Shape must be able to calculate its area.
  double area();
}

// 2. Subclass 1: Circle
class Circle extends Shape {
  // Final property for the radius (cannot be changed after creation)
  final double radius;

  // Constructor to initialize the radius
  // 'this.radius' is a shorthand for assigning the argument to the property
  Circle(this.radius);

  // Override the abstract 'area' method from Shape
  @override
  double area() {
    // Calculate the area using the formula: pi * r^2
    return pi * radius * radius;
  }
}

// 3. Subclass 2: Rectangle
class Rectangle extends Shape {
  // Final properties for width and height
  final double width;
  final double height;

  // Constructor to initialize width and height
  Rectangle(this.width, this.height);

  // Override the abstract 'area' method from Shape
  @override
  double area() {
    // Calculate the area using the formula: width * height
    return width * height;
  }
}

// 4. Main Function for Demonstration
void main() {
  // Create instances (objects) of the subclasses
  // Even though we create Circle and Rectangle, they are also 'Shape' types (polymorphism)
  Shape myCircle = Circle(5.0); // A Circle object
  Shape myRectangle = Rectangle(4.0, 6.0); // A Rectangle object

  // --- Calculate and Print Areas ---

  // Accessing properties specific to Circle (requires checking type or casting)
  // We know 'myCircle' is a Circle, so we can access 'radius' if needed for printing.
  // Using 'as' for casting (use with care, ensure type is correct)
  print('--- Shape Details & Area ---');
  if (myCircle is Circle) { // Safer type check
     print('Circle with radius: ${myCircle.radius}');
  }
  // Call the area() method - Dart figures out which version to run (Circle's)
  print('Area of Circle: ${myCircle.area().toStringAsFixed(2)}'); // Format to 2 decimal places

  print(''); // Add a blank line for separation

  // Accessing properties specific to Rectangle
  if (myRectangle is Rectangle) { // Safer type check
    print('Rectangle with width: ${myRectangle.width}, height: ${myRectangle.height}');
  }
  // Call the area() method - Dart figures out which version to run (Rectangle's)
  print('Area of Rectangle: ${myRectangle.area().toStringAsFixed(2)}');

  // --- Alternative way using a list (demonstrates polymorphism more clearly) ---
  print('\n--- Processing Shapes Polymorphically ---');
  List<Shape> shapes = [
    Circle(3.0),
    Rectangle(2.0, 5.0),
    Circle(1.0)
  ];

  // Loop through the list - Dart calls the correct area() for each object
  for (var shape in shapes) {
     // Check the type to print specific details
     if (shape is Circle) {
        print('Processing Circle (radius ${shape.radius})... Area: ${shape.area().toStringAsFixed(2)}');
     } else if (shape is Rectangle) {
        print('Processing Rectangle (width ${shape.width}, height ${shape.height})... Area: ${shape.area().toStringAsFixed(2)}');
     } else {
        print('Processing unknown shape... Area: ${shape.area().toStringAsFixed(2)}');
     }
  }
}
```

**Explanation of Concepts Used:**

*   **`abstract class Shape`**: Defines a template. You cannot create an object directly like `Shape()` because it's abstract.
*   **`abstract double area();`**: Declares that any concrete (non-abstract) class inheriting from `Shape` *must* provide an implementation for the `area` method.
*   **`class Circle extends Shape`**: `Circle` inherits from `Shape`. It gets the requirement to implement `area()`.
*   **`@override`**: An annotation indicating that the following method (`area` in `Circle` and `Rectangle`) is intended to replace a method from a superclass (`Shape`). It helps catch errors if the superclass method signature changes or doesn't exist.
*   **`Circle(this.radius);`**: A concise constructor syntax in Dart to initialize instance variables.
*   **`Shape myCircle = Circle(5.0);`**: This demonstrates polymorphism. A variable of the superclass type (`Shape`) can hold an object of a subclass type (`Circle`). When `myCircle.area()` is called, Dart determines at runtime that `myCircle` actually holds a `Circle` object and executes the `area()` method defined *in the `Circle` class*. The same applies to `myRectangle`.
*   **`if (shape is Circle)`**: Type checking allows you to safely access properties specific to the subclass (like `radius` or `width`/`height`) after confirming the object's actual runtime type.
*   **`toStringAsFixed(2)`**: A useful method for `double` values to format them nicely to a specific number of decimal places.