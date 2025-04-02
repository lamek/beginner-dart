Okay, here is a beginner Dart problem focused on variables, basic data types, user input, and simple calculations, along with its solution.

---

**Problem Description: Temperature Converter**

**Goal:**
Write a Dart program that converts a temperature from Celsius to Fahrenheit.

**Requirements:**

1.  **Prompt User:** Ask the user to enter a temperature value in degrees Celsius.
2.  **Read Input:** Read the temperature value provided by the user. Assume the user might enter a value with decimal points (e.g., 23.5).
3.  **Data Type:** Store the Celsius temperature in a variable of the appropriate data type (`double`).
4.  **Conversion:** Calculate the equivalent temperature in Fahrenheit using the formula: `Fahrenheit = (Celsius * 9 / 5) + 32`. Store the result in another variable.
5.  **Output:** Print the result in a user-friendly format, showing both the original Celsius value and the calculated Fahrenheit value. For example: "25.0 degrees Celsius is equal to 77.0 degrees Fahrenheit."

**Concepts to Practice:**
*   Declaring variables (`double`, `String`).
*   Getting user input (`stdin.readLineSync()`).
*   Converting String input to a numeric type (`double.parse()` or `double.tryParse()`).
*   Performing arithmetic operations.
*   Printing output to the console (`print()`).
*   String interpolation.

---

**Solution Code**

```dart
import 'dart:io'; // Import the dart:io library for input/output operations

void main() {
  // 1. Prompt User
  print("Enter the temperature in Celsius:");

  // 2. Read Input
  // stdin.readLineSync() reads a line of text from the console.
  // It returns a String? (nullable String), meaning it could be null if there's no input.
  String? inputString = stdin.readLineSync();

  // Basic Input Validation: Check if input is null or empty
  if (inputString == null || inputString.isEmpty) {
    print("Error: No input provided. Exiting.");
    return; // Exit the program if input is invalid
  }

  // 3. Data Type & Conversion from String to double
  // Use double.tryParse which is safer than double.parse.
  // It returns null if the string cannot be parsed into a double,
  // instead of throwing an error.
  double? celsius = double.tryParse(inputString);

  // Check if parsing was successful
  if (celsius == null) {
    print("Error: Invalid input. Please enter a valid number for temperature. Exiting.");
    return; // Exit the program if input is not a valid number
  }

  // 4. Conversion Calculation
  // Apply the formula: F = (C * 9 / 5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;

  // 5. Output the Result
  // Use string interpolation ($) to embed variable values within the string.
  // .toStringAsFixed(1) formats the number to one decimal place for cleaner output.
  print(
      "${celsius.toStringAsFixed(1)} degrees Celsius is equal to ${fahrenheit.toStringAsFixed(1)} degrees Fahrenheit.");
}
```

---