Okay, here is a beginner Dart problem focused on operators and range checking, along with its solution.

---

**Problem Description: Dart Range Check**

**Goal:** Write a Dart program that asks the user to enter a whole number and then checks if that number falls within the specific range of 10 to 50 (inclusive).

**Requirements:**

1.  **Get Input:** Prompt the user to enter a whole number and read their input from the console.
2.  **Define Range:** Use constants or variables to define the lower bound (10) and the upper bound (50) of the range.
3.  **Perform Check:** Use comparison operators (`>=`, `<=`) and a logical operator (`&&`) to determine if the entered number is within the defined range (including the boundary numbers 10 and 50).
4.  **Handle Invalid Input:** Include basic error handling in case the user does not enter a valid whole number.
5.  **Print Output:** Print a clear message to the console indicating whether the entered number is "within the range (10-50)" or "outside the range (10-50)".

**Example Interaction:**

*   If the user enters `25`, the output should be: `25 is within the range (10-50).`
*   If the user enters `5`, the output should be: `5 is outside the range (10-50).`
*   If the user enters `50`, the output should be: `50 is within the range (10-50).`
*   If the user enters `hello`, the output should be: `Invalid input. Please enter a whole number.`

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Define Range boundaries (using const for compile-time constants)
  const int lowerBound = 10;
  const int upperBound = 50;

  // 2. Get Input: Prompt the user
  print("Enter a whole number:");

  // Read the input line from the console
  String? inputString = stdin.readLineSync(); // Reads input as a String? (nullable)

  // Basic check if input was actually provided
  if (inputString == null || inputString.isEmpty) {
    print("No input provided. Exiting.");
    return; // Exit the program if input is null or empty
  }

  // 4. Handle Invalid Input (using try-catch for parsing errors)
  try {
    // Attempt to convert the input string to an integer
    int number = int.parse(inputString);

    // 3. Perform Check: Use comparison and logical operators
    // Check if the number is greater than or equal to the lower bound
    bool isGreaterOrEqualLower = number >= lowerBound;
    // Check if the number is less than or equal to the upper bound
    bool isLessOrEqualUpper = number <= upperBound;

    // Use the logical AND (&&) operator:
    // The number is in range only if BOTH conditions above are true.
    bool isInRange = isGreaterOrEqualLower && isLessOrEqualUpper;

    // 5. Print Output based on the check
    if (isInRange) {
      print("$number is within the range ($lowerBound-$upperBound).");
    } else {
      print("$number is outside the range ($lowerBound-$upperBound).");
    }

  } on FormatException {
    // This block executes if int.parse fails (e.g., user entered text)
    print("Invalid input. Please enter a whole number.");
  } catch (e) {
    // Catch any other potential errors during input processing
    print("An unexpected error occurred: $e");
  }
}
```