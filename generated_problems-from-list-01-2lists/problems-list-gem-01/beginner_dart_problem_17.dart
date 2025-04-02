Okay, here is the beginner Dart problem and its solution.

---

**Dart Problem: Rectangle Area Function**

**Description:**

Your task is to create a Dart function that calculates the area of a rectangle.

1.  Define a function named `calculateRectangleArea`.
2.  This function should accept two parameters: `width` (a `double`) and `height` (a `double`).
3.  Inside the function, calculate the area of the rectangle using the formula: `area = width * height`.
4.  The function should *return* the calculated area (which should be a `double`).
5.  In your `main` function, call `calculateRectangleArea` with sample values (e.g., width = 10.5, height = 4.0).
6.  Store the value returned by the function in a variable.
7.  Print the stored result to the console in a user-friendly format.

---

**Dart Solution:**

```dart
// Function definition: calculateRectangleArea
// Takes two double parameters: width and height
// Returns a double: the calculated area
double calculateRectangleArea(double width, double height) {
  // Calculate the area
  double area = width * height;
  // Return the calculated area
  return area;
}

void main() {
  // Define sample width and height values
  double sampleWidth = 10.5;
  double sampleHeight = 4.0;

  // Call the function and store the returned result in a variable
  double calculatedArea = calculateRectangleArea(sampleWidth, sampleHeight);

  // Print the result to the console
  print('Calculating area for rectangle with width: $sampleWidth and height: $sampleHeight');
  print('The calculated area is: $calculatedArea');

  // Example with different values
  double width2 = 7.0;
  double height2 = 3.2;
  double area2 = calculateRectangleArea(width2, height2);
  print('\nCalculating area for rectangle with width: $width2 and height: $height2');
  print('The calculated area is: $area2');
}
```

**Explanation:**

1.  **`calculateRectangleArea(double width, double height)`:** This defines the function. `double` before the name indicates it will return a double value. `(double width, double height)` declares the two required parameters and their types.
2.  **`double area = width * height;`:** Inside the function, this line performs the multiplication.
3.  **`return area;`:** This keyword sends the value stored in the `area` variable back to where the function was called.
4.  **`void main() { ... }`:** This is the entry point of the Dart program.
5.  **`double calculatedArea = calculateRectangleArea(sampleWidth, sampleHeight);`:** This line *calls* the `calculateRectangleArea` function, passing `sampleWidth` and `sampleHeight` as arguments. The value returned by the function is then assigned to the `calculatedArea` variable.
6.  **`print(...)`:** These lines display the input values and the final calculated area stored in the `calculatedArea` variable.