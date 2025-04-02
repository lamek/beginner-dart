Okay, here is the beginner Dart problem and its solution focused on classes, inheritance, and polymorphism for calculating shape areas.

---

**Problem Description**

**Title:** Shape Hierarchy and Area Calculation

**Objective:**
Create a simple class hierarchy for geometric shapes in Dart. You will define a base class `Shape` and two subclasses, `Circle` and `Rectangle`. Each shape should be able to calculate its own area. This exercise demonstrates basic object-oriented principles like inheritance and polymorphism.

**Requirements:**

1.  **Base Class `Shape`:**
    *   Define a class named `Shape`.
    *   It should have a method named `calculateArea()` that takes no arguments and returns a `double`. For the base `Shape` class, this method should simply return `0.0` (as a generic shape has no defined area calculation).

2.  **Subclass `Circle`:**
    *   Define a class named `Circle` that **inherits** from `Shape`.
    *   It should have a `final` instance variable `radius` of type `double`.
    *   It should have a constructor that accepts the `radius` as an argument and initializes the instance variable.
    *   It must **override** the `calculateArea()` method. This overridden method should calculate and return the area of the circle (Area = π * radius²). You can use `pi` from `dart:math`.

3.  **Subclass `Rectangle`:**
    *   Define a class named `Rectangle` that **inherits** from `Shape`.
    *   It should have two `final` instance variables: `width` and `height`, both of type `double`.
    *   It should have a constructor that accepts `width` and `height` as arguments and initializes the instance variables.
    *   It must **override** the `calculateArea()` method. This overridden method should calculate and return the area of the rectangle (Area = width * height).

4.  **Main Function:**
    *   In the `main` function, create at least one instance of `Circle` and one instance of `Rectangle`.
    *   Call the `calculateArea()` method on each instance.
    *   Print the calculated area for each shape to the console, clearly indicating which shape the area belongs to.

---

**Solution Code**

```dart
import 'dart:math'; // Required for pi constant

// Base Class: Shape
class Shape {
  // Default area calculation for a generic shape
  double calculateArea() {
    return 0.0;
  }
}

// Subclass: Circle
class Circle extends Shape {
  final double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override calculateArea for Circle
  @override
  double calculateArea() {
    // Area of a circle = π * r^2
    return pi * radius * radius;
  }
}

// Subclass: Rectangle
class Rectangle extends Shape {
  final double width;
  final double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override calculateArea for Rectangle
  @override
  double calculateArea() {
    // Area of a rectangle = width * height
    return width * height;
  }
}

// Main function to demonstrate usage
void main() {
  // Create instances of the shapes
  Circle myCircle = Circle(5.0); // A circle with radius 5.0
  Rectangle myRectangle = Rectangle(4.0, 6.0); // A rectangle with width 4.0 and height 6.0

  // Calculate and print the area of the circle
  print('Calculating areas:');
  print('-----------------');
  
  // Polymorphism in action: calling calculateArea() on different Shape objects
  // Dart knows which specific version of calculateArea() to call based on the object's actual type.
  
  double circleArea = myCircle.calculateArea();
  print('Circle (Radius: ${myCircle.radius}) Area: $circleArea');

  // Calculate and print the area of the rectangle
  double rectangleArea = myRectangle.calculateArea();
  print('Rectangle (Width: ${myRectangle.width}, Height: ${myRectangle.height}) Area: $rectangleArea');

  // Optional: Demonstrate polymorphism using a list of Shapes
  print('\nDemonstrating Polymorphism with a List:');
  List<Shape> shapes = [myCircle, myRectangle, Circle(3.0)]; // A list holding different shapes

  for (Shape shape in shapes) {
      // The correct calculateArea() method is called for each object
      // regardless of the list type being the base class 'Shape'.
      print('Shape Area: ${shape.calculateArea()}');
  }
}
```

**Explanation:**

1.  **`Shape`:** The base class defines the contract (`calculateArea` method) but provides a default implementation.
2.  **`Circle` and `Rectangle`:** These subclasses `extend` `Shape`, inheriting its structure. They provide their own specific data (`radius`, `width`, `height`) via constructors. Crucially, they `@override` the `calculateArea` method with their specific formulas.
3.  **`main`:** We create objects (`myCircle`, `myRectangle`). When `myCircle.calculateArea()` is called, Dart's runtime polymorphism ensures that the `Circle`'s version of the method is executed. Similarly, `myRectangle.calculateArea()` calls the `Rectangle`'s version.
4.  **Polymorphism:** The optional list example further demonstrates this. Even though the list is typed as `List<Shape>`, when we iterate and call `shape.calculateArea()`, the specific overridden method of the *actual* object (`Circle` or `Rectangle`) stored in the list at that moment is invoked.