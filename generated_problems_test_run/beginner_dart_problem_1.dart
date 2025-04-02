Okay, here is a beginner Dart problem focusing on variables, data types (specifically `double` and `String`), basic input/output, and arithmetic operations, along with its solution.

---

**Problem Description**

**Title:** Temperature Converter (Celsius to Fahrenheit)

**Level:** Beginner

**Concepts Covered:**
*   Variables (`double`, `String`)
*   Data Types (`double`, `String?`)
*   Basic Input/Output (`dart:io`)
*   String Interpolation
*   Arithmetic Operations
*   Type Conversion (`double.tryParse`)
*   Null Safety (`?`, `!`, or null checks)

**Task:**

Write a Dart program that performs the following steps:
1.  Prompts the user to enter a temperature in degrees Celsius.
2.  Reads the user's input from the console.
3.  Converts the entered Celsius temperature (which might have decimal points) into a `double`. Handle potential invalid input gracefully.
4.  Calculates the equivalent temperature in degrees Fahrenheit using the formula: `F = (C * 9 / 5) + 32`.
5.  Prints the result to the console in a user-friendly format, showing both the original Celsius value and the calculated Fahrenheit value.

**Example Interaction:**

```
Enter temperature in Celsius: 25.5
25.5 degrees Celsius is equal to 77.9 degrees Fahrenheit.
```

**Bonus Consideration (Optional):** How would you handle cases where the user enters non-numeric text?

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the library for Input/Output operations

void main() {
  // 1. Prompt the user for input
  // Using stdout.write keeps the cursor on the same line for input
  stdout.write('Enter temperature in Celsius: ');

  // 2. Read the user's input from the console
  // stdin.readLineSync() reads the full line entered by the user as a String.
  // It returns a 'String?' (nullable String) because input might fail or reach end-of-stream.
  String? inputCelsius = stdin.readLineSync();

  // 3. Validate and convert the input String to a double
  if (inputCelsius == null || inputCelsius.isEmpty) {
    print('Error: No input provided.');
    return; // Exit the program if input is null or empty
  }

  // Use double.tryParse() for safe conversion. It returns null if parsing fails.
  double? celsius = double.tryParse(inputCelsius);

  if (celsius == null) {
    // Handle the case where the input was not a valid number
    print('Error: Invalid input. Please enter a numeric value for temperature.');
    return; // Exit the program
  }

  // 4. Calculate Fahrenheit using the formula F = (C * 9 / 5) + 32
  // Dart handles the division 9 / 5 as floating-point automatically
  double fahrenheit = (celsius * 9 / 5) + 32;

  // 5. Print the result using string interpolation ($)
  print(
      '$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.');
}
```

**Explanation:**

1.  **`import 'dart:io';`**: This line imports the necessary library to interact with standard input (`stdin`) and standard output (`stdout`).
2.  **`stdout.write(...)`**: This displays the prompt message to the user without adding a newline character afterwards.
3.  **`stdin.readLineSync()`**: This reads the line of text entered by the user until they press Enter. It returns the input as a `String?` (nullable String).
4.  **`if (inputCelsius == null || inputCelsius.isEmpty)`**: This checks if the input operation failed (returned `null`) or if the user just pressed Enter without typing anything (`isEmpty`).
5.  **`double.tryParse(inputCelsius)`**: This attempts to convert the `String` read from the user into a `double`. If the string contains a valid number (like "25", "30.5", "-10.0"), it returns the `double` value. If the string cannot be parsed as a number (like "abc", "twenty"), it returns `null`. This is safer than `double.parse()`, which would throw an error and crash the program on invalid input.
6.  **`if (celsius == null)`**: This checks if `tryParse` failed (returned `null`). If it did, an error message is printed, and the program exits.
7.  **`double fahrenheit = (celsius * 9 / 5) + 32;`**: This line declares a `double` variable named `fahrenheit` and assigns the result of the conversion formula to it. Dart performs the arithmetic operations according to standard precedence.
8.  **`print(...)`**: This displays the final output. String interpolation (`$variableName`) is used to easily embed the values of the `celsius` and `fahrenheit` variables directly into the output string.