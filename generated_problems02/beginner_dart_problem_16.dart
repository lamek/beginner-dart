Okay, here is a beginner Dart problem focused on functions, parameters, and return values, specifically for calculating the area of a rectangle, along with its solution.

---

**Problem Description: Calculate Rectangle Area using a Function**

**Goal:**
Your task is to write a Dart function that calculates the area of a rectangle.

**Requirements:**

1.  **Create a Function:** Define a function named `calculateRectangleArea`.
2.  **Parameters:** This function should accept two parameters:
    *   `length` (representing the length of the rectangle, use `double` type).
    *   `width` (representing the width of the rectangle, use `double` type).
3.  **Calculation:** Inside the function, calculate the area using the formula: `area = length * width`.
4.  **Return Value:** The function should `return` the calculated `area` (which will be a `double`).
5.  **Call the Function:** In your `main` function:
    *   Call the `calculateRectangleArea` function at least two times with different sets of `length` and `width` values (e.g., 5.0 and 3.0, then 10.5 and 2.0).
    *   Store the returned area from each function call in a variable.
    *   Print the results to the console in a user-friendly format, indicating the length, width, and calculated area for each case.

---

**Solution Code:**

```dart
import 'dart:io'; // Not strictly necessary for this problem, but good practice

// 1. Function Definition:
// Takes length and width (doubles) as parameters
// Returns the calculated area (a double)
double calculateRectangleArea(double length, double width) {
  // 3. Calculation: Calculate the area
  double area = length * width;

  // 4. Return Value: Return the result
  return area;
}

void main() {
  // 5. Call the Function (Example 1)
  double length1 = 5.0;
  double width1 = 3.0;
  // Call the function and store the returned value
  double area1 = calculateRectangleArea(length1, width1);
  // Print the result for Example 1
  print("Calculating area for rectangle 1:");
  print("Length: $length1");
  print("Width: $width1");
  print("Calculated Area: $area1"); // Output should be 15.0
  print("-" * 20); // Separator

  // 5. Call the Function (Example 2)
  double length2 = 10.5;
  double width2 = 2.0;
  // Call the function and store the returned value
  double area2 = calculateRectangleArea(length2, width2);
  // Print the result for Example 2
  print("Calculating area for rectangle 2:");
  print("Length: $length2");
  print("Width: $width2");
  print("Calculated Area: $area2"); // Output should be 21.0
  print("-" * 20); // Separator

  // Example 3: Calling directly within print statement
  double length3 = 7.2;
  double width3 = 4.0;
  print("Calculating area for rectangle 3:");
  print("Length: $length3");
  print("Width: $width3");
  // Call the function directly inside the string interpolation
  print("Calculated Area: ${calculateRectangleArea(length3, width3)}"); // Output should be 28.8
  print("-" * 20);
}
```

**Explanation:**

1.  The `calculateRectangleArea` function is defined with `double` parameters `length` and `width` and specifies a `double` return type.
2.  Inside the function, it calculates `length * width` and returns the result.
3.  The `main` function serves as the entry point.
4.  We define variables (`length1`, `width1`, `length2`, `width2`, etc.) to hold the dimensions for different rectangles.
5.  We call `calculateRectangleArea`, passing these variables as arguments.
6.  The value *returned* by the function is stored in `area1` and `area2`.
7.  `print` statements are used to display the input dimensions and the calculated area clearly for each example.
8.  The third example demonstrates calling the function directly within the `print` statement using `${...}` syntax for string interpolation.