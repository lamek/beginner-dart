Okay, here is a beginner Dart problem focused on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Goal:** Create a basic class hierarchy for geometric points, demonstrating inheritance and polymorphism.

**Requirements:**

1.  **`Point` Class:**
    *   Create a class named `Point`.
    *   It should have two `double` properties: `x` and `y` representing its coordinates.
    *   Include a constructor that takes `x` and `y` values to initialize the properties.
    *   Implement a method `calculateDistanceFromOrigin()` that calculates and returns the distance of the point from the origin (0, 0). The distance formula is `sqrt(x^2 + y^2)`. You'll need to import `dart:math`.
    *   Override the `toString()` method to return a string representation like `"Point(x, y)"`.

2.  **`ColoredPoint` Class:**
    *   Create a class named `ColoredPoint` that **inherits** from the `Point` class.
    *   Add a `String` property named `color`.
    *   Include a constructor that takes `x`, `y`, and `color` values. It should use the parent class's constructor (`super`) to initialize `x` and `y`, and then initialize its own `color` property.
    *   Override the `toString()` method (demonstrating **polymorphism**) to return a string representation like `"ColoredPoint(x, y, color: color_value)"`.

3.  **`main` Function:**
    *   In your `main` function:
        *   Create an instance of `Point` with coordinates (3, 4).
        *   Create an instance of `ColoredPoint` with coordinates (1, 2) and color "blue".
        *   Print both objects to the console (this will implicitly use their `toString()` methods).
        *   Calculate and print the distance from the origin for the `Point` instance using its method.

---

**Solution Code**

```dart
import 'dart:math'; // Import the math library for sqrt function

// 1. Point Class
class Point {
  double x;
  double y;

  // Constructor to initialize x and y
  Point(this.x, this.y);

  // Method to calculate distance from origin (0,0)
  double calculateDistanceFromOrigin() {
    // Distance formula: sqrt(x^2 + y^2)
    return sqrt(x * x + y * y);
  }

  // Override toString for better representation
  @override
  String toString() {
    return 'Point($x, $y)';
  }
}

// 2. ColoredPoint Class inheriting from Point
class ColoredPoint extends Point {
  String color;

  // Constructor for ColoredPoint
  // Uses `super(x, y)` to call the parent (Point) constructor
  ColoredPoint(double x, double y, this.color) : super(x, y);

  // Override toString again for ColoredPoint specific representation
  // This demonstrates polymorphism - the same method name (`toString`)
  // behaves differently depending on the object's actual type.
  @override
  String toString() {
    // We can still access x and y because they are inherited from Point
    return 'ColoredPoint($x, $y, color: $color)';
  }
}

// 3. Main Function for Demonstration
void main() {
  // Create an instance of Point
  var p1 = Point(3, 4);

  // Create an instance of ColoredPoint
  var cp1 = ColoredPoint(1, 2, 'blue');

  // Print the objects (implicitly uses their toString methods)
  print('--- Object Details ---');
  print(p1);   // Calls Point's toString()
  print(cp1);  // Calls ColoredPoint's toString()

  // Calculate and print the distance for the Point instance
  print('\n--- Calculations ---');
  double distance = p1.calculateDistanceFromOrigin();
  print('Distance of $p1 from origin: $distance');

  // Note: We can also call calculateDistanceFromOrigin on cp1 because it's inherited
  // double cpDistance = cp1.calculateDistanceFromOrigin();
  // print('Distance of $cp1 from origin: $cpDistance');
}
```

**Explanation:**

1.  **`Point` Class:** Defines the basic structure with `x`, `y`, a constructor, the distance calculation method, and a custom `toString`.
2.  **`ColoredPoint` Class:**
    *   `extends Point`: This establishes the inheritance relationship. `ColoredPoint` gets all non-private members of `Point`.
    *   `super(x, y)`: In the `ColoredPoint` constructor, this calls the `Point` constructor to handle the initialization of `x` and `y`.
    *   `@override`: This keyword indicates that the following method (`toString`) is intentionally replacing (overriding) a method from the parent class (`Point`).
3.  **Polymorphism:** When `print(p1)` and `print(cp1)` are called, Dart looks at the actual type of the object (`p1` is a `Point`, `cp1` is a `ColoredPoint`) and calls the appropriate `toString()` method for that specific type. This ability of objects of different types (in an inheritance hierarchy) to respond differently to the same method call is polymorphism.
4.  **`main` Function:** Demonstrates creating objects of both classes and calling their methods, showing inheritance (`cp1` can implicitly use methods from `Point` like `calculateDistanceFromOrigin` if needed, although not explicitly required by *this* problem's print statement) and polymorphism (different `print` outputs due to overridden `toString`).