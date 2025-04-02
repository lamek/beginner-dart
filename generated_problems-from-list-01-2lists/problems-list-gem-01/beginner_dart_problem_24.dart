Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism for calculating shape areas, along with its solution.

---

### Problem Description

**Dart Programming Problem: Shape Area Calculation**

**Objective:** Practice fundamental Object-Oriented Programming (OOP) concepts in Dart, specifically classes, inheritance, and polymorphism.

**Tasks:**

1.  **Create a Base Class `Shape`:**
    *   Define a class named `Shape`.
    *   Add a method `double calculateArea()` to this class. This method should simply return `0.0` as a default area for a generic shape.

2.  **Create a Subclass `Circle`:**
    *   Define a class named `Circle` that **inherits** from `Shape`.
    *   Add a `final double` property named `radius` to the `Circle` class.
    *   Create a constructor for `Circle` that accepts the `radius` as an argument and initializes the property.
    *   **Override** the `calculateArea()` method in the `Circle` class. This method should calculate and return the area of the circle (Area = π * radius²). You might need to import `dart:math` for `pi`.

3.  **Create a Subclass `Rectangle`:**
    *   Define a class named `Rectangle` that **inherits** from `Shape`.
    *   Add two `final double` properties: `width` and `height`.
    *   Create a constructor for `Rectangle` that accepts `width` and `height` as arguments and initializes the properties.
    *   **Override** the `calculateArea()` method in the `Rectangle` class. This method should calculate and return the area of the rectangle (Area = width * height).

4.  **Use the Classes:**
    *   In your `main` function:
        *   Create an instance of `Circle` with a specific radius (e.g., 5.0).
        *   Create an instance of `Rectangle` with specific width and height (e.g., 4.0 and 6.0).
        *   Call the `calculateArea()` method on both instances and print the results to the console in a user-friendly format (e.g., "Area of the Circle: [calculated area]").

---

### Solution Code

```dart
import 'dart:math'; // Needed for pi in Circle calculation

// 1. Base Class Shape
class Shape {
  // Default area calculation for a generic shape
  double calculateArea() {
    print("Calculating area for a generic Shape (should be overridden by subclasses)");
    return 0.0;
  }
}

// 2. Subclass Circle
class Circle extends Shape {
  // Property specific to Circle
  final double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override calculateArea for Circle
  @override // Annotation indicating we are intentionally overriding a method
  double calculateArea() {
    // Area = pi * radius * radius
    return pi * radius * radius;
  }
}

// 3. Subclass Rectangle
class Rectangle extends Shape {
  // Properties specific to Rectangle
  final double width;
  final double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override calculateArea for Rectangle
  @override // Annotation indicating we are intentionally overriding a method
  double calculateArea() {
    // Area = width * height
    return width * height;
  }
}

// 4. Use the Classes
void main() {
  // Create instances (Objects) of the subclasses
  Circle myCircle = Circle(5.0);
  Rectangle myRectangle = Rectangle(4.0, 6.0);

  // Print information and calculated areas
  print('--- Circle Details ---');
  print('Created a Circle with radius: ${myCircle.radius}');
  // Calls the overridden calculateArea() method in the Circle class
  print('Area of the Circle: ${myCircle.calculateArea()}');

  print('\n--- Rectangle Details ---');
  print('Created a Rectangle with width: ${myRectangle.width} and height: ${myRectangle.height}');
  // Calls the overridden calculateArea() method in the Rectangle class
  print('Area of the Rectangle: ${myRectangle.calculateArea()}');

  // --- Demonstration of Polymorphism ---
  // We can treat Circle and Rectangle objects as Shape objects
  print('\n--- Polymorphism Demo ---');
  List<Shape> shapes = [myCircle, myRectangle, Shape()]; // A list containing different shapes

  for (Shape shape in shapes) {
    // Dart determines *which* calculateArea() method to call at runtime
    // based on the actual type of the object ('shape' currently refers to).
    // This is polymorphism.
    double area = shape.calculateArea();
    print('Processing a ${shape.runtimeType}: Area = $area');
  }
}
```

---