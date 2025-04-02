Okay, here is a beginner Dart problem focusing on inheritance and polymorphism, along with its solution.

---

**Problem Description**

**Goal:** Practice object-oriented programming concepts in Dart, specifically inheritance and polymorphism, by modeling geometric shapes.

**Task:**

1.  **Create a Base Class:**
    *   Define an `abstract` base class named `Shape`.
    *   This class should have an `abstract` method `double area()` which is intended to calculate the area of the shape. Since a generic shape doesn't have a specific area formula, making the method abstract forces subclasses to provide their own implementation.

2.  **Create a Circle Subclass:**
    *   Define a class named `Circle` that `extends` the `Shape` class.
    *   Add a `final double radius` property to the `Circle` class.
    *   Create a constructor for `Circle` that takes the `radius` as an argument and initializes the property.
    *   `@override` the `area()` method in the `Circle` class to calculate and return the area of the circle (using the formula: π * radius²). You can use `3.14159` for π or import `dart:math` and use the `pi` constant.

3.  **Create a Rectangle Subclass:**
    *   Define a class named `Rectangle` that `extends` the `Shape` class.
    *   Add `final double width` and `final double height` properties to the `Rectangle` class.
    *   Create a constructor for `Rectangle` that takes the `width` and `height` as arguments and initializes the properties.
    *   `@override` the `area()` method in the `Rectangle` class to calculate and return the area of the rectangle (using the formula: width * height).

4.  **Demonstrate Polymorphism:**
    *   In the `main` function, create at least one instance of `Circle` and one instance of `Rectangle`.
    *   Create a `List<Shape>` and add both the circle and rectangle objects to this list.
    *   Iterate through the list of shapes. For each shape in the list, call its `area()` method and print the result (e.g., "Circle Area: [area]" or "Rectangle Area: [area]"). Observe how the correct `area()` method is called for each object, even though you are iterating through a list of the base `Shape` type.

---

**Solution Code**

```dart
import 'dart:math'; // Import the math library for the 'pi' constant

// 1. Create the abstract base class Shape
abstract class Shape {
  // Abstract method - must be implemented by subclasses
  double area();
}

// 2. Create the Circle subclass
class Circle extends Shape {
  final double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override the area() method for Circle
  @override
  double area() {
    return pi * radius * radius; // Using pi from dart:math
  }
}

// 3. Create the Rectangle subclass
class Rectangle extends Shape {
  final double width;
  final double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override the area() method for Rectangle
  @override
  double area() {
    return width * height;
  }
}

// 4. Demonstrate Polymorphism in the main function
void main() {
  // Create instances of Circle and Rectangle
  Shape myCircle = Circle(5.0);         // Radius = 5.0
  Shape myRectangle = Rectangle(4.0, 6.0); // Width = 4.0, Height = 6.0

  // Create a list of Shape objects
  List<Shape> shapes = [myCircle, myRectangle];

  print("Calculating areas using polymorphism:");

  // Iterate through the list and call the area() method on each shape
  for (var shape in shapes) {
    // Determine the type at runtime for clearer output
    String shapeType = shape.runtimeType.toString();
    // Call the appropriate area() method polymorphically
    double calculatedArea = shape.area();

    // Print the results, formatting the area to 2 decimal places
    print("$shapeType Area: ${calculatedArea.toStringAsFixed(2)}");
  }

  // Example of direct calls (optional)
  print("\nDirect calls:");
  print("Circle Area (direct): ${myCircle.area().toStringAsFixed(2)}");
  print("Rectangle Area (direct): ${myRectangle.area().toStringAsFixed(2)}");
}
```

**Explanation:**

1.  **`Shape`:** An `abstract` class cannot be instantiated directly. Its `abstract` method `area()` acts as a contract, ensuring any non-abstract class inheriting from `Shape` *must* provide its own `area()` implementation.
2.  **`Circle` and `Rectangle`:** These classes `extend Shape`, inheriting its type. They provide concrete implementations for the `area()` method, specific to their geometric formulas. The `@override` annotation is good practice to indicate that we are intentionally replacing a method from the superclass.
3.  **`main` Function & Polymorphism:**
    *   We create `Circle` and `Rectangle` objects but store them in variables of type `Shape` (`Shape myCircle = ...`). This is possible because `Circle` *is a* `Shape` (and `Rectangle` *is a* `Shape`).
    *   The `List<Shape>` holds objects of different *actual* types (`Circle`, `Rectangle`) but treats them uniformly as `Shape` objects.
    *   When `shape.area()` is called inside the loop, Dart determines the *actual* type of the object (`shape`) at runtime and calls the appropriate overridden `area()` method (either the one from `Circle` or the one from `Rectangle`). This ability to treat objects of different subclasses in a uniform way through the base class interface is the essence of polymorphism.