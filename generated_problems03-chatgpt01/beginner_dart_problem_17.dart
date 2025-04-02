Okay, here is a beginner Dart problem focusing on functions, parameters, and return values, using the "Area of a Circle" calculation.

---

**Problem Description**

**Goal:** Calculate the Area of a Circle

Write a Dart function that calculates and returns the area of a circle given its radius.

**Requirements:**

1.  Define a function named `circleArea`.
2.  This function must accept one parameter: a `double` representing the `radius` of the circle.
3.  Inside the function, calculate the area using the formula: `Area = π * radius²`.
4.  Use the `pi` constant available in Dart's built-in `dart:math` library. You will need to import this library.
5.  The function must return the calculated area as a `double`.
6.  Include a `main` function to test your `circleArea` function by calling it with a sample radius (e.g., 5.0) and printing the result to the console.

---

**Solution Code**

```dart
import 'dart:math'; // Import the math library to access the 'pi' constant

// Function definition:
// - Takes one parameter: 'radius' of type double
// - Returns a value of type double
double circleArea(double radius) {
  // Calculate the area using the formula: pi * radius * radius
  // (pi is accessed from the imported 'dart:math' library)
  double area = pi * radius * radius;

  // Return the calculated area
  return area;
}

// Main function to test the circleArea function
void main() {
  // Define a sample radius
  double myRadius = 5.0;

  // Call the function with the sample radius and store the result
  double result = circleArea(myRadius);

  // Print the result to the console
  print('The area of a circle with radius $myRadius is: $result');

  // You can test with other values too:
  print('The area of a circle with radius 1.0 is: ${circleArea(1.0)}');
  print('The area of a circle with radius 10.0 is: ${circleArea(10.0)}');
}
```

**Explanation:**

1.  `import 'dart:math';`: This line imports Dart's math library, which gives us access to mathematical constants like `pi` and functions like `pow`, `sqrt`, etc.
2.  `double circleArea(double radius) { ... }`: This defines the function.
    *   `double`: Specifies that the function will return a value of type `double`.
    *   `circleArea`: The name of the function.
    *   `(double radius)`: Defines the parameter list. It accepts one parameter named `radius`, which must be a `double`.
3.  `double area = pi * radius * radius;`: This line performs the calculation. It multiplies the `pi` constant (from `dart:math`) by the `radius` multiplied by itself (radius squared). The result is stored in a `double` variable named `area`.
4.  `return area;`: This line returns the calculated `area` value from the function.
5.  `void main() { ... }`: This is the entry point of the Dart program.
6.  Inside `main`, we declare a `double` variable `myRadius`, call `circleArea` with this radius, store the returned value in `result`, and then print a user-friendly message showing the input radius and the calculated area. Additional calls demonstrate testing with different values.