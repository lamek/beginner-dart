Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Title:** Shape Area Calculator

**Goal:** Create a Dart program that calculates the area of different geometric shapes using functions.

**Requirements:**

1.  **Define Functions:** You need to write three separate functions:
    *   `calculateCircleArea`: This function should accept one parameter, the `radius` (as a `double`), and return the calculated area of the circle (as a `double`). Use the formula: `Area = π * radius²`. You can use `3.14159` for π or import `dart:math` and use `pi`.
    *   `calculateRectangleArea`: This function should accept two parameters, `width` and `height` (both as `double`), and return the calculated area of the rectangle (as a `double`). Use the formula: `Area = width * height`.
    *   `calculateTriangleArea`: This function should accept two parameters, `base` and `height` (both as `double`), and return the calculated area of the triangle (as a `double`). Use the formula: `Area = 0.5 * base * height`.

2.  **Main Function:** In your `main` function:
    *   Declare variables to hold sample dimensions for a circle, a rectangle, and a triangle.
    *   Call each of your area calculation functions with the appropriate sample dimensions.
    *   Store the results (the returned areas) in separate variables.
    *   Print the calculated areas to the console in a user-friendly format (e.g., "The area of the circle is: X").

**Example Output (using sample values):**

```
Calculating Areas...
The area of the circle with radius 5.0 is: 78.53975
The area of the rectangle with width 4.0 and height 6.0 is: 24.0
The area of the triangle with base 3.0 and height 8.0 is: 12.0
```

---

**Solution Code**

```dart
import 'dart:math'; // Import the math library to use the 'pi' constant

// Function to calculate the area of a circle
// Takes radius (double) as a parameter
// Returns the area (double)
double calculateCircleArea(double radius) {
  // Formula: Area = π * r^2
  // Using 'pi' from dart:math and 'pow' function for exponentiation
  // Alternatively: return pi * radius * radius;
  return pi * pow(radius, 2);
}

// Function to calculate the area of a rectangle
// Takes width and height (both double) as parameters
// Returns the area (double)
double calculateRectangleArea(double width, double height) {
  // Formula: Area = width * height
  return width * height;
}

// Function to calculate the area of a triangle
// Takes base and height (both double) as parameters
// Returns the area (double)
double calculateTriangleArea(double base, double height) {
  // Formula: Area = 0.5 * base * height
  return 0.5 * base * height;
}

// Main function - the entry point of the program
void main() {
  // Define sample dimensions
  double circleRadius = 5.0;
  double rectangleWidth = 4.0;
  double rectangleHeight = 6.0;
  double triangleBase = 3.0;
  double triangleHeight = 8.0;

  print("Calculating Areas...");

  // Calculate areas by calling the functions and storing the return values
  double circleArea = calculateCircleArea(circleRadius);
  double rectangleArea = calculateRectangleArea(rectangleWidth, rectangleHeight);
  double triangleArea = calculateTriangleArea(triangleBase, triangleHeight);

  // Print the results
  // Using string interpolation ($) to include variable values in the string
  print("The area of the circle with radius $circleRadius is: $circleArea");
  print("The area of the rectangle with width $rectangleWidth and height $rectangleHeight is: $rectangleArea");
  print("The area of the triangle with base $triangleBase and height $triangleHeight is: $triangleArea");
}
```

---