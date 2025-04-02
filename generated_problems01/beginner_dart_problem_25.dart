Okay, here is a beginner Dart problem focusing on classes with static methods, along with its solution.

---

## Dart Problem: Static Geometric Calculator

**Problem Description:**

You need to create a simple geometric calculator using Dart.

1.  Define a class named `Geometry`.
2.  This class should *not* be instantiated (you won't create objects like `Geometry myGeo = Geometry();`).
3.  Inside the `Geometry` class, create two `static` methods:
    *   `calculateCircleArea`: This method should accept one `double` argument representing the radius of a circle and return the calculated area (`double`). The formula for the area of a circle is `π * radius²`. You can use `pi` from the `dart:math` library.
    *   `calculateRectangleArea`: This method should accept two `double` arguments representing the width and height of a rectangle and return the calculated area (`double`). The formula for the area of a rectangle is `width * height`.
4.  In your `main` function, demonstrate how to use these static methods:
    *   Calculate the area of a circle with a radius of `5.0`.
    *   Calculate the area of a rectangle with a width of `4.0` and a height of `6.0`.
    *   Print both calculated areas to the console with descriptive messages.

**Key Concepts:** Class, Static Methods, `dart:math` library.

---

## Dart Solution: Static Geometric Calculator

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

**Explanation:**

1.  **`import 'dart:math';`**: This line imports Dart's built-in math library, which gives us access to constants like `pi`.
2.  **`class Geometry { ... }`**: This defines the `Geometry` class.
3.  **`static double calculateCircleArea(...)`**: The `static` keyword means this method belongs to the class itself, not to any specific instance (object) of the class. We can call it using `Geometry.calculateCircleArea(...)`. It takes a `double radius` and returns the calculated area as a `double`. It includes a basic check for negative radius.
4.  **`static double calculateRectangleArea(...)`**: Similar to the circle method, this `static` method calculates the rectangle's area using `width * height`. It also includes basic checks for negative dimensions.
5.  **`void main() { ... }`**: This is the entry point of the Dart program.
6.  **`Geometry.calculateCircleArea(circleRadius)`**: This is how you call the static method. You use the Class name (`Geometry`), followed by a dot (`.`), followed by the static method name (`calculateCircleArea`) and its arguments.
7.  **`Geometry.calculateRectangleArea(rectangleWidth, rectangleHeight)`**: Similarly, the static method for the rectangle area is called directly on the `Geometry` class.
8.  **`print(...)`**: The results are printed to the console using string interpolation (`$variableName`).