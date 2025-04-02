Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Title:** Shape Area Calculator

**Concepts:** Classes, Objects, Inheritance, Polymorphism (Method Overriding)

**Goal:**
Create a system for calculating the area of different geometric shapes using object-oriented principles in Dart.

**Requirements:**

1.  **Base Class (`Shape`):**
    *   Define an `abstract` class named `Shape`.
    *   This class should declare an `abstract` method `double area();` which signifies that any concrete subclass *must* provide an implementation for calculating its area.

2.  **Subclasses:**
    *   **`Rectangle`:**
        *   Create a class `Rectangle` that `extends Shape`.
        *   It should have two `double` properties: `width` and `height`.
        *   Implement a constructor to initialize these properties.
        *   Override the `area()` method to calculate and return the area of the rectangle (`width * height`).
    *   **`Circle`:**
        *   Create a class `Circle` that `extends Shape`.
        *   It should have one `double` property: `radius`.
        *   Implement a constructor to initialize this property.
        *   Override the `area()` method to calculate and return the area of the circle (`pi * radius * radius`). You'll need to import `dart:math` for `pi`.
    *   **`Triangle`:**
        *   Create a class `Triangle` that `extends Shape`.
        *   It should have two `double` properties: `base` and `height`.
        *   Implement a constructor to initialize these properties.
        *   Override the `area()` method to calculate and return the area of the triangle (`0.5 * base * height`).

3.  **Demonstration (`main` function):**
    *   In your `main` function:
        *   Create at least one instance (object) of `Rectangle`, `Circle`, and `Triangle` with some sample dimensions.
        *   Create a `List<Shape>` and add all the created shape objects to this list.
        *   Iterate through the list and, for each `shape` object, print its type (e.g., "Rectangle", "Circle") and the calculated area by calling the `area()` method. This demonstrates polymorphism, as the correct `area()` implementation is called for each object despite them being treated as `Shape` types in the list.

---

**Solution Code**

```dart
import 'dart:math'; // Import math library for 'pi' constant

// 1. Base Class (Abstract)
abstract class Shape {
  // Abstract method: Must be implemented by subclasses
  double area();
}

// 2. Subclasses

// Rectangle Subclass
class Rectangle extends Shape {
  final double width;
  final double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Override the area method for Rectangle
  @override
  double area() {
    return width * height;
  }
}

// Circle Subclass
class Circle extends Shape {
  final double radius;

  // Constructor
  Circle(this.radius);

  // Override the area method for Circle
  @override
  double area() {
    return pi * radius * radius; // Using 'pi' from dart:math
  }
}

// Triangle Subclass
class Triangle extends Shape {
  final double base;
  final double height;

  // Constructor
  Triangle(this.base, this.height);

  // Override the area method for Triangle
  @override
  double area() {
    return 0.5 * base * height;
  }
}

// 3. Demonstration
void main() {
  // Create instances (objects) of the shapes
  final rectangle = Rectangle(10.0, 5.0);
  final circle = Circle(7.0);
  final triangle = Triangle(8.0, 6.0);

  // Demonstrate polymorphism using a list of Shape
  // The list can hold any object that IS A Shape (Rectangle, Circle, Triangle)
  final shapes = <Shape>[rectangle, circle, triangle];

  print('Calculating areas of different shapes:');
  print('-' * 40);

  // Iterate through the list and call the area() method on each shape
  for (final shape in shapes) {
    // Get the runtime type of the shape object
    String shapeType = shape.runtimeType.toString();

    // Call the area() method. Dart determines which specific implementation
    // (Rectangle's, Circle's, or Triangle's) to run at runtime.
    // This is polymorphism in action!
    double shapeArea = shape.area();

    // Print the results, formatting the area to 2 decimal places
    print('$shapeType Area: ${shapeArea.toStringAsFixed(2)}');
  }
  print('-' * 40);

  // You can also call methods directly on the specific objects
  print('\nDirect call examples:');
  print('Rectangle area directly: ${rectangle.area()}');
  print('Circle area directly: ${circle.area().toStringAsFixed(2)}');
}
```

---