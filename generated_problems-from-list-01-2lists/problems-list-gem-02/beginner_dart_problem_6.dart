Okay, here is a beginner Dart problem based on your description, followed by its solution.

---

**Problem Description**

**Title:** Rectangle Area and Perimeter Calculator

**Goal:** Write a Dart program that calculates and prints the area and perimeter of a rectangle.

**Steps:**

1.  **Declare Variables:** Create two variables, `length` and `width`, to store the dimensions of a rectangle. You can choose either `int` or `double` as the data type. Assign some sample values to these variables (e.g., `length = 12`, `width = 6`).
2.  **Calculate Area:** Use the arithmetic multiplication operator (`*`) to calculate the area of the rectangle (`area = length * width`). Store the result in a new variable called `area`.
3.  **Calculate Perimeter:** Use the arithmetic addition (`+`) and multiplication (`*`) operators to calculate the perimeter (`perimeter = 2 * (length + width)`). Store the result in a new variable called `perimeter`. Remember that Dart respects the order of operations (parentheses first).
4.  **Print Results:** Use the `print()` function to display the values of the length, width, calculated area, and calculated perimeter to the console. Make the output user-friendly, clearly indicating what each printed value represents.

---

**Solution Code**

```dart
void main() {
  // 1. Declare Variables for length and width
  // We'll use 'double' to allow for decimal dimensions, but 'int' would also work.
  double length = 12.5;
  double width = 6.0;

  print('--- Rectangle Dimensions ---');
  print('Length: $length');
  print('Width: $width');
  print(''); // Add a blank line for spacing

  // 2. Calculate Area
  // Area = Length * Width
  double area = length * width;

  // 3. Calculate Perimeter
  // Perimeter = 2 * (Length + Width)
  double perimeter = 2 * (length + width);

  // 4. Print Results
  print('--- Calculated Results ---');
  print('Area: $area');
  print('Perimeter: $perimeter');
}
```

**Explanation:**

1.  The `main` function is the entry point of the Dart program.
2.  `double length = 12.5;` and `double width = 6.0;` declare two variables of type `double` and initialize them with values.
3.  `print(...)` statements are used to display the initial dimensions for clarity. `$length` and `$width` use string interpolation to insert the variable values into the string.
4.  `double area = length * width;` calculates the product of `length` and `width` using the `*` operator and stores it in the `area` variable.
5.  `double perimeter = 2 * (length + width);` first calculates the sum of `length` and `width` (because of the parentheses) and then multiplies the result by 2 using the `*` operator, storing the final value in the `perimeter` variable.
6.  The final `print(...)` statements display the calculated `area` and `perimeter` using string interpolation.