Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Goal:** Write a Dart program that calculates the area of a rectangle and a triangle using separate functions.

**Requirements:**

1.  **`calculateRectangleArea` Function:**
    *   Create a function named `calculateRectangleArea`.
    *   This function should accept two parameters: `length` (a double) and `width` (a double).
    *   Inside the function, calculate the area of the rectangle using the formula: `Area = length * width`.
    *   The function should return the calculated area (a double).

2.  **`calculateTriangleArea` Function:**
    *   Create a function named `calculateTriangleArea`.
    *   This function should accept two parameters: `base` (a double) and `height` (a double).
    *   Inside the function, calculate the area of the triangle using the formula: `Area = 0.5 * base * height`.
    *   The function should return the calculated area (a double).

3.  **`main` Function:**
    *   In the `main` function:
        *   Define sample values for length, width, base, and height.
        *   Call the `calculateRectangleArea` function with the sample length and width, and store the returned result in a variable.
        *   Call the `calculateTriangleArea` function with the sample base and height, and store the returned result in a variable.
        *   Print the calculated rectangle area and triangle area to the console in a user-friendly format (e.g., "The area of the rectangle is: X" and "The area of the triangle is: Y").

---

**Solution Code**

```dart
// Function to calculate the area of a rectangle
double calculateRectangleArea(double length, double width) {
  // Calculate the area using the formula: length * width
  double area = length * width;
  // Return the calculated area
  return area;
}

// Function to calculate the area of a triangle
double calculateTriangleArea(double base, double height) {
  // Calculate the area using the formula: 0.5 * base * height
  double area = 0.5 * base * height;
  // Return the calculated area
  return area;
}

void main() {
  // Define sample dimensions
  double rectangleLength = 10.0;
  double rectangleWidth = 5.0;
  double triangleBase = 8.0;
  double triangleHeight = 6.0;

  // Call the function to calculate rectangle area and store the result
  double rectangleAreaResult = calculateRectangleArea(rectangleLength, rectangleWidth);

  // Call the function to calculate triangle area and store the result
  double triangleAreaResult = calculateTriangleArea(triangleBase, triangleHeight);

  // Print the results
  print("Calculating area for a rectangle with length $rectangleLength and width $rectangleWidth...");
  print("The area of the rectangle is: $rectangleAreaResult");

  print("\nCalculating area for a triangle with base $triangleBase and height $triangleHeight...");
  print("The area of the triangle is: $triangleAreaResult");
}
```

**Explanation:**

1.  **`calculateRectangleArea`:** Takes `length` and `width` as `double` parameters. It calculates the product and returns the result as a `double`.
2.  **`calculateTriangleArea`:** Takes `base` and `height` as `double` parameters. It calculates `0.5 * base * height` and returns the result as a `double`.
3.  **`main`:** This is the entry point of the program.
    *   It declares and initializes variables for the dimensions.
    *   It calls `calculateRectangleArea`, passing the rectangle's dimensions. The returned value (the area) is stored in `rectangleAreaResult`.
    *   It calls `calculateTriangleArea`, passing the triangle's dimensions. The returned value (the area) is stored in `triangleAreaResult`.
    *   Finally, it uses `print()` with string interpolation (`$variableName`) to display the input dimensions and the calculated areas clearly.