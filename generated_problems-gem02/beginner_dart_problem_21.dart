Okay, here is a beginner Dart problem focused on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Goal:** Practice object-oriented programming concepts in Dart, specifically inheritance and polymorphism, by creating a hierarchy of shape classes.

**Requirements:**

1.  **Base Class `Shape`:**
    *   Create an `abstract` class named `Shape`.
    *   Define an `abstract` method within `Shape` called `calculateArea` that takes no arguments and is intended to return a `double` (the area). Abstract methods have no implementation body in the base class.

2.  **Subclass `Rectangle`:**
    *   Create a class named `Rectangle` that `extends` the `Shape` class.
    *   Give `Rectangle` two `double` properties: `width` and `height`.
    *   Create a constructor for `Rectangle` that accepts `width` and `height` and initializes the properties.
    *   `@override` the `calculateArea` method in `Rectangle` to calculate and return the area (`width * height`).

3.  **Subclass `Circle`:**
    *   Create a class named `Circle` that `extends` the `Shape` class.
    *   Give `Circle` one `double` property: `radius`.
    *   Create a constructor for `Circle` that accepts `radius` and initializes the property.
    *   `@override` the `calculateArea` method in `Circle` to calculate and return the area (`pi * radius * radius`). You might need to import `dart:math` for `pi`.

4.  **Main Function (`main`)**:
    *   In your `main` function, create at least one instance (object) of `Rectangle` and one instance of `Circle`.
    *   Call the `calculateArea` method on each instance.
    *   Print the calculated area for each shape to the console, clearly indicating which shape the area belongs to.

---

**Solution Code**

```dart
import 'dart:math'; // Import the math library for pi

// 1. Base Class Shape (Abstract)
abstract class Shape {
  // Abstract method - must be implemented by subclasses
  double calculateArea();
}

// 2. Subclass Rectangle
class Rectangle extends Shape {
  final double width;
  final double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Override and implement the abstract method
  @override
  double calculateArea() {
    return width * height;
  }
}

// 3. Subclass Circle
class Circle extends Shape {
  final double radius;

  // Constructor
  Circle(this.radius);

  // Override and implement the abstract method
  @override
  double calculateArea() {
    return pi * radius * radius; // Using 'pi' from dart:math
    // Alternatively: return pi * pow(radius, 2);
  }
}

// 4. Main Function
void main() {
  // Create instances of the subclasses
  final Rectangle myRectangle = Rectangle(10.0, 5.0);
  final Circle myCircle = Circle(7.0);

  // Although myRectangle and myCircle are specific types,
  // they can also be treated as 'Shape' (polymorphism).
  // We could create a list: List<Shape> shapes = [myRectangle, myCircle];

  // Calculate and print areas
  double rectangleArea = myRectangle.calculateArea();
  double circleArea = myCircle.calculateArea();

  print('--- Shape Area Calculations ---');
  print('Rectangle Width: ${myRectangle.width}, Height: ${myRectangle.height}');
  print('Area of Rectangle: $rectangleArea');

  print(''); // Add a blank line for separation

  print('Circle Radius: ${myCircle.radius}');
  print('Area of Circle: $circleArea');
  // Example of formatting the output to 2 decimal places:
  // print('Area of Circle: ${circleArea.toStringAsFixed(2)}');
}
```