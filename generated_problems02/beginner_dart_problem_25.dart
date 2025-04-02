Okay, here is a beginner Dart problem focusing on classes and static methods, along with its solution.

---

**Problem Description**

**Title:** Simple Geometric Calculator

**Objective:** Create a utility class in Dart to perform basic geometric calculations without needing to create an object (instance) of the class.

**Requirements:**

1.  Define a class named `Geometry`.
2.  Inside the `Geometry` class, implement two `static` methods:
    *   `areaOfCircle(double radius)`: This method should take the radius of a circle as a `double` and return its area (`double`). The formula for the area of a circle is π * radius². You can use `pi` from the `dart:math` library.
    *   `areaOfRectangle(double length, double width)`: This method should take the length and width of a rectangle as `double` values and return its area (`double`). The formula is length * width.
3.  In your `main` function, demonstrate how to use these static methods:
    *   Calculate and print the area of a circle with a radius of 5.0.
    *   Calculate and print the area of a rectangle with a length of 10.0 and a width of 4.0.
4.  **Crucially:** You must call these methods directly on the `Geometry` class itself (e.g., `Geometry.areaOfCircle(...)`), *not* by creating an instance like `var calc = Geometry(); calc.areaOfCircle(...);`.

---

**Dart Solution Code**

```dart
// Import the math library to use the value of pi
import 'dart:math';

// Define the Geometry class
class Geometry {
  // Static method to calculate the area of a circle
  // 'static' means the method belongs to the class itself, not to any specific instance.
  // It can be called directly using the class name: Geometry.areaOfCircle(...)
  static double areaOfCircle(double radius) {
    // Check for invalid input (optional but good practice)
    if (radius < 0) {
      print("Error: Radius cannot be negative.");
      return 0.0; // Return 0 or throw an error for invalid input
    }
    // Calculate area using the formula: pi * r^2
    return pi * radius * radius;
  }

  // Static method to calculate the area of a rectangle
  // It can be called directly using the class name: Geometry.areaOfRectangle(...)
  static double areaOfRectangle(double length, double width) {
    // Check for invalid input (optional but good practice)
    if (length < 0 || width < 0) {
      print("Error: Length and width cannot be negative.");
      return 0.0; // Return 0 or throw an error
    }
    // Calculate area using the formula: length * width
    return length * width;
  }

  // Note: We don't need a constructor because we are not creating instances
  // of this class. All methods are static.
}

void main() {
  // Define the dimensions
  double circleRadius = 5.0;
  double rectLength = 10.0;
  double rectWidth = 4.0;

  // --- Using the static methods directly on the Geometry class ---

  // Calculate the area of the circle
  // Notice we call areaOfCircle directly on the Geometry class
  double calculatedCircleArea = Geometry.areaOfCircle(circleRadius);
  print('Area of a circle with radius $circleRadius: $calculatedCircleArea');

  // Calculate the area of the rectangle
  // Notice we call areaOfRectangle directly on the Geometry class
  double calculatedRectArea = Geometry.areaOfRectangle(rectLength, rectWidth);
  print('Area of a rectangle with length $rectLength and width $rectWidth: $calculatedRectArea');

  // Example of trying with invalid input (optional)
  // double invalidArea = Geometry.areaOfCircle(-2.0);
  // print('Attempt to calculate area with negative radius: $invalidArea');
}
```

**Explanation:**

1.  **`import 'dart:math';`**: This line imports Dart's built-in math library, which gives us access to mathematical constants like `pi`.
2.  **`class Geometry { ... }`**: This defines the class.
3.  **`static double areaOfCircle(...)`** and **`static double areaOfRectangle(...)`**: The `static` keyword is key here. It means these methods belong to the `Geometry` class itself, not to any specific object created from the class. This allows us to call them using the class name (`Geometry.methodName()`). This is useful for utility functions that don't rely on the state of a specific object.
4.  **`void main() { ... }`**: This is the entry point of the Dart program.
5.  **`Geometry.areaOfCircle(circleRadius)`** and **`Geometry.areaOfRectangle(rectLength, rectWidth)`**: These lines demonstrate calling the static methods. We use the class name `Geometry` followed by a dot (`.`) and the method name. We do *not* need to create an instance like `var geometry = Geometry();`.