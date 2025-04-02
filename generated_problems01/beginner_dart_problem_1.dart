Okay, here is a beginner Dart problem focused on variables and data types, specifically `double` and `String`, along with basic input/output and arithmetic operations.

---

**Problem Description**

**Title:** Simple Temperature Converter (Celsius to Fahrenheit)

**Objective:**
Write a Dart program that prompts the user to enter a temperature in Celsius and then converts it to Fahrenheit.

**Requirements:**

1.  **Prompt User:** Display a message asking the user to enter a temperature value in Celsius.
2.  **Read Input:** Read the value entered by the user from the console. Assume the user might enter a decimal value, so treat the input as potentially needing to be a `double`.
3.  **Handle Input:** Convert the user's input (which is initially a `String`) into a `double` data type. Include basic error handling in case the user enters non-numeric text.
4.  **Calculate:** Use the formula `F = (C * 9/5) + 32` to calculate the equivalent temperature in Fahrenheit. `C` is the temperature in Celsius (the `double` value you obtained) and `F` is the temperature in Fahrenheit.
5.  **Print Output:** Display the original Celsius temperature and the calculated Fahrenheit temperature to the console in a clear, user-friendly format (e.g., "XX.X degrees Celsius is equal to YY.Y degrees Fahrenheit.").

**Focus:**
This problem focuses on:
*   Declaring variables (specifically `String?`, `double?`, `double`).
*   Using basic data types (`String`, `double`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`double.tryParse`).
*   Basic null safety checks (`if (input == null)`).
*   Performing arithmetic operations.
*   Printing output to the console (`print`) using string interpolation.

---

**Dart Solution**

```dart
import 'dart:io'; // Import the dart:io library for input/output functions

void main() {
  // 1. Prompt User
  print("Enter temperature in Celsius:");

  // 2. Read Input
  // stdin.readLineSync() reads a line of text from the console.
  // It returns a String? (String or null) because input might fail or be empty.
  String? inputCelsius = stdin.readLineSync();

  // Basic check if input was received
  if (inputCelsius == null || inputCelsius.isEmpty) {
    print("No input received. Exiting.");
    return; // Exit the program if no input
  }

  // 3. Handle Input & Convert to double
  // double.tryParse() attempts to convert the String to a double.
  // It returns a double? (double or null). If conversion fails, it returns null.
  double? celsius = double.tryParse(inputCelsius);

  // Check if the conversion was successful
  if (celsius == null) {
    print("Invalid input: '$inputCelsius' is not a valid number. Please enter a numeric value.");
    return; // Exit the program if input is not a valid number
  }

  // 4. Calculate Fahrenheit
  // Apply the conversion formula: F = (C * 9/5) + 32
  // Dart handles floating-point arithmetic correctly here.
  double fahrenheit = (celsius * 9 / 5) + 32;

  // 5. Print Output
  // Use string interpolation ($) to embed variable values within the string.
  // .toStringAsFixed(1) formats the double to one decimal place for cleaner output.
  print("${celsius.toStringAsFixed(1)} degrees Celsius is equal to ${fahrenheit.toStringAsFixed(1)} degrees Fahrenheit.");
}
```

---