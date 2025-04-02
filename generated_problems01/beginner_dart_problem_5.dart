Okay, here is a beginner Dart problem focused on variables, data types, and basic string manipulation, along with its solution.

---

**Problem Description: Basic String Analyzer**

**Goal:** Write a Dart program that asks the user to enter a sentence or phrase, performs several basic analyses on it, and prints the results.

**Requirements:**

1.  **Get Input:** Prompt the user to enter a string and read their input. Store this input in a `String` variable.
2.  **Calculate Length:** Find the total number of characters in the input string. Store this in an `int` variable.
3.  **Convert Case:**
    *   Convert the entire input string to uppercase. Store this in a `String` variable.
    *   Convert the entire input string to lowercase. Store this in a `String` variable.
4.  **Check for Substring:** Determine if the input string contains the substring "Dart" (case-insensitive). Store the result (true or false) in a `bool` variable.
5.  **Print Results:** Display the following information clearly labelled:
    *   The original string entered by the user.
    *   The length of the string.
    *   The string in all uppercase letters.
    *   The string in all lowercase letters.
    *   Whether the string contains "Dart" (case-insensitive).

**Example Interaction:**

```
Please enter a sentence or phrase: Dart is fun to learn!
Original String: Dart is fun to learn!
Length: 23
Uppercase: DART IS FUN TO LEARN!
Lowercase: dart is fun to learn!
Contains 'Dart' (case-insensitive)? true
```

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the io library for input/output

void main() {
  // 1. Get Input
  stdout.write("Please enter a sentence or phrase: "); // Prompt user without a newline
  String? userInput = stdin.readLineSync(); // Read user input (can be null)

  // Handle potential null input (provide a default or exit)
  if (userInput == null || userInput.isEmpty) {
    print("No input provided. Exiting.");
    return; // Exit the program if input is invalid
  }

  // Store the validated input
  String originalString = userInput;

  // 2. Calculate Length
  int stringLength = originalString.length;

  // 3. Convert Case
  String upperCaseString = originalString.toUpperCase();
  String lowerCaseString = originalString.toLowerCase();

  // 4. Check for Substring (case-insensitive)
  String substringToCheck = "Dart";
  // Convert both original string and substring to lowercase for case-insensitive comparison
  bool containsSubstring = originalString.toLowerCase().contains(substringToCheck.toLowerCase());

  // 5. Print Results
  print("\n--- Analysis Results ---"); // Add a separator for clarity
  print("Original String: $originalString");
  print("Length: $stringLength");
  print("Uppercase: $upperCaseString");
  print("Lowercase: $lowerCaseString");
  print("Contains '$substringToCheck' (case-insensitive)? $containsSubstring");
}
```

---