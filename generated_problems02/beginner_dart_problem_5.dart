Okay, here is a beginner Dart problem focusing on String manipulation and basic variables, along with its solution.

---

## Problem Description: Dart Beginner Problem - String Explorer

**Objective:** Write a Dart program that interacts with the user to get a string input and then performs several basic manipulations and analyses on that string.

**Requirements:**

1.  **Get Input:** Prompt the user to enter a sentence or phrase.
2.  **Store Input:** Read the user's input and store it in a `String` variable.
3.  **Calculate Length:** Find the length (number of characters) of the input string and store it in an `int` variable.
4.  **Case Conversion:**
    *   Convert the entire input string to uppercase and store it in a new `String` variable.
    *   Convert the entire input string to lowercase and store it in another new `String` variable.
5.  **Substring Check:** Check if the *original* input string contains the substring "Dart" (case-sensitive). Store the result (`true` or `false`) in a `bool` variable.
6.  **Print Results:** Display the following information to the console, each on a new line with a clear label:
    *   The original string entered by the user.
    *   The calculated length of the string.
    *   The uppercase version of the string.
    *   The lowercase version of the string.
    *   Whether the string contains "Dart".

**Concepts to Apply:**

*   Variables (`String`, `int`, `bool`)
*   Printing to console (`print()`)
*   Reading user input (`stdin.readLineSync()`)
*   String properties (`.length`)
*   String methods (`.toUpperCase()`, `.toLowerCase()`, `.contains()`)
*   Basic null safety (`?` and `??`) for input handling

---

## Dart Solution

```dart
import 'dart:io'; // Import the dart:io library for input/output operations

void main() {
  // 1. Get Input: Prompt the user
  print("Welcome to the String Explorer!");
  print("Please enter a sentence or phrase:");

  // 2. Store Input: Read and handle potential null input
  // stdin.readLineSync() reads a line from the console. It can return null.
  // We use '?? '' ' (null-aware operator) to provide an empty string ('')
  // as a default value if readLineSync() returns null.
  String userInput = stdin.readLineSync() ?? '';

  // --- Perform Operations ---

  // 3. Calculate Length: Get the length of the string
  int stringLength = userInput.length;

  // 4. Case Conversion:
  String upperCaseString = userInput.toUpperCase();
  String lowerCaseString = userInput.toLowerCase();

  // 5. Substring Check: Check for the presence of "Dart" (case-sensitive)
  String substringToCheck = "Dart";
  bool containsDart = userInput.contains(substringToCheck);

  // 6. Print Results: Display all gathered information
  print("\n--- String Analysis Results ---"); // \n adds a newline for spacing
  print("Original String: $userInput");
  print("String Length: $stringLength characters");
  print("Uppercase Version: $upperCaseString");
  print("Lowercase Version: $lowerCaseString");
  print("Contains the substring '$substringToCheck': $containsDart");
  print("-----------------------------");
}
```

**How to Run the Code:**

1.  Save the code in a file named `string_explorer.dart` (or any other name ending in `.dart`).
2.  Open a terminal or command prompt.
3.  Navigate to the directory where you saved the file.
4.  Run the program using the Dart SDK: `dart string_explorer.dart`
5.  The program will prompt you to enter text. Type something and press Enter to see the results.