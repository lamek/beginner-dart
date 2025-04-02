Okay, here is a beginner Dart problem focused on variables and data types, specifically `double` and using the `dart:math` library, along with its solution.

---

**Problem Description: Calculate Circle Area**

**Objective:**
Write a Dart program to calculate the area of a circle given its radius.

**Requirements:**

1.  **Declare a Variable:** Create a variable to store the radius of the circle.
2.  **Data Type:** Use the `double` data type for the radius, as it might contain decimal values. Assign a sample value (e.g., `7.5`) to this variable.
3.  **Import Library:** Import the `dart:math` library to get access to the mathematical constant `pi`.
4.  **Calculate Area:** Calculate the area of the circle using the formula: `Area = π * radius²`.
5.  **Print Output:** Print the value of the radius and the calculated area to the console in a user-friendly format.

**Concepts Involved:**
*   Variable declaration (`double`)
*   Variable assignment
*   Using mathematical constants (`pi` from `dart:math`)
*   Arithmetic operations (multiplication)
*   Printing output (`print()`)

---

**Dart Solution:**

```dart
// Import the dart:math library to access mathematical constants like pi
import 'dart:math';

void main() {
  // 1. Declare a variable 'radius' of type double and assign a value
  double radius = 7.5;

  // 2. Calculate the area of the circle
  // Formula: Area = pi * radius * radius
  // 'pi' is a constant available from the 'dart:math' library
  double area = pi * radius * radius;
  // Alternatively, you could use the pow function from dart:math:
  // double area = pi * pow(radius, 2);

  // 3. Print the radius and the calculated area
  print('The radius of the circle is: $radius');
  print('The calculated area of the circle is: $area');

  // Example of printing with fixed decimal places (optional)
  print('The area rounded to 2 decimal places is: ${area.toStringAsFixed(2)}');
}
```

---