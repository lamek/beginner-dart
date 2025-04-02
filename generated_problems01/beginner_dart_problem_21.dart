Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Objective:** Practice basic Object-Oriented Programming (OOP) concepts in Dart, specifically inheritance and polymorphism, by creating a hierarchy of shapes.

**Tasks:**

1.  **Create a Base Class:** Define an `abstract` class named `Shape`. This class should contain a single `abstract` method declaration: `double area();`. An abstract method doesn't have an implementation in the base class.
2.  **Create a Subclass (`Circle`):**
    *   Create a class named `Circle` that `extends` the `Shape` class.
    *   Add a `final` property `radius` of type `double` to the `Circle` class.
    *   Create a constructor for `Circle` that accepts the `radius` as an argument and initializes the property.
    *   `override` the `area()` method in the `Circle` class. This implementation should calculate and return the area of the circle (Area = π * radius²). You might need to import `dart:math` for `pi`.
3.  **Create another Subclass (`Rectangle`):**
    *   Create a class named `Rectangle` that also `extends` the `Shape` class.
    *   Add two `final` properties: `width` and `height`, both of type `double`.
    *   Create a constructor for `Rectangle` that accepts `width` and `height` as arguments and initializes the properties.
    *   `override` the `area()` method in the `Rectangle` class. This implementation should calculate and return the area of the rectangle (Area = width * height).
4.  **Demonstrate Usage (`main` function):**
    *   In the `main` function, create an instance (object) of `Circle` with a specific radius (e.g., 5.0).
    *   Create an instance (object) of `Rectangle` with a specific width and height (e.g., 4.0 and 6.0).
    *   Call the `area()` method on both the `Circle` object and the `Rectangle` object.
    *   Print the calculated areas to the console, clearly indicating which shape's area is being displayed.

---

**Solution Code**

```dart
import 'dart:math'; // Import math library for 'pi'

// 1. Create a Base Class (Abstract)
abstract class Shape {
  // Abstract method - must be implemented by subclasses
  double area();
}

// 2. Create a Subclass (Circle)
class Circle extends Shape {
  final double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override the area() method for Circle
  @override
  double area() {
    return pi * radius * radius;
  }
}

// 3. Create another Subclass (Rectangle)
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

// 4. Demonstrate Usage (main function)
void main() {
  // Create instances of the subclasses
  final myCircle = Circle(5.0);
  final myRectangle = Rectangle(4.0, 6.0);

  // Calculate and print the areas
  // Note: Even though we call the same method name 'area()',
  // the correct implementation (Circle's or Rectangle's) is executed.
  // This is polymorphism in action.

  double circleArea = myCircle.area();
  print('The area of the Circle with radius ${myCircle.radius} is: $circleArea');

  double rectangleArea = myRectangle.area();
  print('The area of the Rectangle with width ${myRectangle.width} and height ${myRectangle.height} is: $rectangleArea');

  // Optional: Demonstrate storing different shapes in a list of the base type
  print('\n--- Demonstration with a List<Shape> ---');
  List<Shape> shapes = [myCircle, myRectangle, Circle(2.0), Rectangle(10.0, 2.0)];

  for (var shape in shapes) {
    // Polymorphism: Dart determines the actual type of 'shape' at runtime
    // and calls the appropriate overridden 'area()' method.
    print('Area of a ${shape.runtimeType}: ${shape.area()}');
  }
}
```

---