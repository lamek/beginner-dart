Okay, here is a beginner Dart problem focusing on variables, basic data types, and arithmetic operations, along with its solution.

---

**Problem Description**

**Topic:** Variables and Basic Data Types (int, double, String)

**Goal:** Write a Dart program that converts temperatures between Celsius and Fahrenheit.

**Requirements:**

1.  **Celsius to Fahrenheit:**
    *   Declare a variable named `celsius` of type `double` and assign it a temperature value (e.g., 25.0).
    *   Calculate the equivalent Fahrenheit temperature using the formula: `F = (C * 9 / 5) + 32`. Store the result in a variable named `fahrenheit`.
    *   Print the result in a user-friendly format, like: "25.0°C is 77.0°F".

2.  **Fahrenheit to Celsius:**
    *   Declare a variable named `fahrenheitInput` of type `double` and assign it a different temperature value (e.g., 98.6).
    *   Calculate the equivalent Celsius temperature using the formula: `C = (F - 32) * 5 / 9`. Store the result in a variable named `celsiusOutput`.
    *   Print the result in a user-friendly format, like: "98.6°F is 37.0°C".

**Hint:** Use the `double` data type for temperatures to handle potential decimal values. Use the `print()` function and string interpolation (e.g., `$variableName`) to display the output.

---

**Solution Code**

```dart
void main() {
  // Part 1: Celsius to Fahrenheit Conversion

  // 1. Declare a variable for Celsius temperature.
  //    We use 'double' because temperatures can have decimal points.
  double celsius = 25.0;

  // 2. Calculate Fahrenheit using the formula: F = (C * 9 / 5) + 32
  //    Dart follows standard order of operations (multiplication/division before addition).
  double fahrenheit = (celsius * 9 / 5) + 32;

  // 3. Print the result using string interpolation ($) to include variable values.
  //    The '\u00B0' is the Unicode character for the degree symbol.
  print('$celsius\u00B0C is $fahrenheit\u00B0F'); // Expected output: 25.0°C is 77.0°F

  // Add a blank line for better separation in output
  print(''); // Prints an empty line

  // Part 2: Fahrenheit to Celsius Conversion

  // 1. Declare a variable for Fahrenheit temperature.
  //    Using a different name 'fahrenheitInput' to avoid confusion with the previous result.
  double fahrenheitInput = 98.6;

  // 2. Calculate Celsius using the formula: C = (F - 32) * 5 / 9
  //    Parentheses ensure subtraction happens before multiplication/division.
  double celsiusOutput = (fahrenheitInput - 32) * 5 / 9;

  // 3. Print the result using string interpolation.
  //    We can use .toStringAsFixed(1) to format the output to one decimal place if desired,
  //    but for simplicity, we'll print the raw double value first.
  print('$fahrenheitInput\u00B0F is $celsiusOutput\u00B0C'); // Expected output: 98.6°F is 37.0°C

  // Example with formatting to 1 decimal place (optional):
  // print('$fahrenheitInput\u00B0F is ${celsiusOutput.toStringAsFixed(1)}\u00B0C');
}
```