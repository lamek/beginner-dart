Okay, here is the "Calculate Rectangle Area" problem formatted according to your template:

---
title: Function to Calculate Rectangle Area
category: Functions
difficulty: Beginner
focus:
  - Function Definition
  - Parameters
  - Return Values
  - double
---

# Function to Calculate Rectangle Area

## Problem Description

Write a Dart program that includes a function to calculate the area of a rectangle.

## Requirements

1.  **Define the Function:**
    *   Create a function named `calculateRectangleArea`.
    *   This function should accept two parameters: `length` (a `double`) and `width` (a `double`).
    *   Inside the function, calculate the area using the formula: `area = length * width`.
    *   The function should return the calculated `area` (which will be a `double`).

2.  **Use the Function:**
    *   In your `main` function, call the `calculateRectangleArea` function at least two times with different values for length and width (e.g., `length = 10.0, width = 5.0` and `length = 7.5, width = 3.2`).
    *   Store the returned area in variables.
    *   Print the results to the console in a user-friendly format, indicating the dimensions used and the calculated area for each case.

## Focus

This problem focuses on:

*   Defining functions (`double functionName(...)`).
*   Using parameters (`double length`, `double width`).
*   Returning values from functions (`return value;`).
*   Calling functions and passing arguments (`functionName(arg1, arg2)`).
*   Storing function results in variables (`double result = ...`).
*   Using the `double` data type.
*   Basic arithmetic operations (`*`).
*   Using `print` for output with string interpolation.
*   The structure of a basic Dart program (`void main()`).

## Solution Code

```dart
// Function definition: calculateRectangleArea
// Takes length and width (doubles) as parameters
// Returns the calculated area (a double)
double calculateRectangleArea(double length, double width) {
  // Calculate the area
  double area = length * width;
  // Return the result
  return area;
}

// Main function - the entry point of the program
void main() {
  // --- First Test Case ---
  // Define dimensions for the first rectangle
  double length1 = 10.0;
  double width1 = 5.0;

  // Call the function and store the returned area
  double area1 = calculateRectangleArea(length1, width1);

  // Print the result for the first case
  print(
      "The area of a rectangle with length $length1 and width $width1 is: $area1");

  // --- Second Test Case ---
  // Define dimensions for the second rectangle
  double length2 = 7.5;
  double width2 = 3.2;

  // Call the function with different values and store the returned area
  double area2 = calculateRectangleArea(length2, width2);

  // Print the result for the second case
  print(
      "The area of a rectangle with length $length2 and width $width2 is: $area2");

  // --- Optional: Direct call within print ---
  print(
      "The area of a rectangle with length 20.0 and width 2.5 is: ${calculateRectangleArea(20.0, 2.5)}");
}
```

## Explanation

1.  **`calculateRectangleArea(double length, double width)`:** This defines the function. `double` before the name indicates it returns a value of type double. Inside the parentheses are the parameters (`length` and `width`), both declared as `double`.
2.  **`double area = length * width;`**: This line performs the calculation.
3.  **`return area;`**: This line sends the calculated `area` back to where the function was called.
4.  **`main()`**: This is where the program execution begins.
5.  **`double area1 = calculateRectangleArea(length1, width1);`**: We call the function, passing `length1` and `width1` as arguments. The value returned by the function is stored in the `area1` variable.
6.  **`print(...)`**: These lines display the input dimensions and the calculated area stored in the `area1` and `area2` variables, using string interpolation (`$variableName`) to include the values directly in the string.
7.  The last print statement shows how you can directly use the function call within the `print` statement's string interpolation (`${...}`).