Okay, here is a beginner Dart problem focused on arithmetic operators for temperature conversion, along with its solution.

---

## Problem Description

**Title:** Simple Temperature Converter (Celsius to Fahrenheit)

**Goal:** Write a Dart program that converts a temperature value from Celsius to Fahrenheit.

**Requirements:**

1.  **Variable:** Define a variable to hold a temperature value in Celsius (you can start with a specific value like `25.0`).
2.  **Formula:** Use the standard formula to convert Celsius to Fahrenheit:
    `Fahrenheit = (Celsius * 9/5) + 32`
3.  **Operators:** Implement the formula using Dart's arithmetic operators (`*`, `/`, `+`).
4.  **Output:** Print the original Celsius temperature and the calculated Fahrenheit temperature to the console in a user-friendly format.

**Example Input (Hardcoded):**

*   Celsius: `25.0`

**Example Output:**

```
25.0 degrees Celsius is equal to 77.0 degrees Fahrenheit.
```

**Bonus (Optional):**

*   Add a comparison check using a comparison operator (`<`, `>`, `<=`, `>=`) to print an additional message if the calculated Fahrenheit temperature is below freezing (`32.0`).

---

## Solution

```dart
void main() {
  // 1. Define a variable for Celsius temperature
  // Use 'double' for potential decimal values in temperature
  double celsius = 25.0; 

  // 2. Apply the conversion formula using arithmetic operators
  // Fahrenheit = (Celsius * 9/5) + 32
  // Note: Dart handles division with doubles correctly (9 / 5 = 1.8)
  double fahrenheit = (celsius * 9 / 5) + 32;

  // 3. Print the original and converted temperatures
  // Using string interpolation ($variableName) to embed values in the string
  print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.');

  // --- Bonus Part ---
  // 4. Check if the temperature in Fahrenheit is below freezing (32.0)
  // Using a comparison operator (<) inside an if statement
  if (fahrenheit < 32.0) {
    print("That's below the freezing point!");
  } 
  // You could add other checks too, e.g., using >= for at or above freezing
  else if (fahrenheit >= 32.0) {
    print("That's at or above the freezing point.");
  }
}
```

**Explanation:**

1.  **`void main() { ... }`**: This is the entry point for every Dart program.
2.  **`double celsius = 25.0;`**: Declares a variable named `celsius` of type `double` (to handle decimal points) and initializes it with the value `25.0`.
3.  **`double fahrenheit = (celsius * 9 / 5) + 32;`**:
    *   Declares a variable `fahrenheit` of type `double`.
    *   It calculates the Fahrenheit value according to the formula:
        *   `celsius * 9`: Multiplies the Celsius value by 9.
        *   `/ 5`: Divides the result by 5.
        *   `+ 32`: Adds 32 to the result.
    *   Dart respects operator precedence (multiplication/division before addition). Parentheses `()` ensure the multiplication and division happen before the addition, matching the formula's structure.
4.  **`print(...)`**: Displays the output string to the console. `$celsius` and `$fahrenheit` are examples of string interpolation, where the values of the variables are inserted directly into the string.
5.  **`if (fahrenheit < 32.0) { ... }`**: This is the bonus part. It uses the less than operator (`<`) to compare the calculated `fahrenheit` value with `32.0`. If the condition is true (the temperature is below freezing), the message inside the `if` block is printed.
6.  **`else if (fahrenheit >= 32.0) { ... }`**: This demonstrates another comparison operator (`>=`, greater than or equal to) and provides an alternative message if the temperature is not below freezing.