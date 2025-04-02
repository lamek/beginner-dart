Okay, here is a beginner Dart problem focused on operators and age eligibility, along with its solution.

---

**Problem Description: Age Eligibility Check**

**Objective:** Write a Dart program that asks a user for their age and then determines if they are legally eligible to vote. In most places, the voting age is 18 years or older.

**Requirements:**

1.  **Prompt User:** Display a message asking the user to enter their age.
2.  **Read Input:** Read the age entered by the user from the console.
3.  **Convert Input:** Convert the input (which is initially a String) into an integer. You should handle potential errors if the user enters non-numeric text.
4.  **Check Eligibility:** Use a comparison operator (`>=`) to check if the entered age is 18 or greater.
5.  **Print Result:**
    *   If the age is 18 or greater, print a message like "You are eligible to vote."
    *   If the age is less than 18, print a message like "You are not eligible to vote yet."

**Concepts Practiced:**

*   Variable declaration (`int`, `String?`)
*   Input/Output (`dart:io`, `stdout.write`, `stdin.readLineSync`)
*   Type conversion (`int.tryParse`)
*   Error handling (checking for `null` input/parsing errors)
*   Comparison operators (`>=`)
*   Conditional logic (`if`/`else`)
*   Printing output (`print`)

---

**Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output functions

void main() {
  // 1. Prompt the user to enter their age
  // stdout.write keeps the cursor on the same line after the prompt
  stdout.write("Please enter your age: ");

  // 2. Read the input from the console
  // stdin.readLineSync() reads the full line entered by the user as a String.
  // It returns a nullable String (String?) because input could fail.
  String? input = stdin.readLineSync();

  // 3. Validate and convert the input
  if (input == null) {
    // Handle cases where reading input failed (e.g., end of input stream)
    print("Error reading input. Exiting.");
    return; // Exit the program
  }

  // Try to parse the input string into an integer.
  // int.tryParse() is safer than int.parse() because it returns null
  // if the string is not a valid integer, instead of throwing an error.
  int? age = int.tryParse(input);

  if (age == null) {
    // Handle cases where the user entered non-numeric text
    print("Invalid input. Please enter a number for your age.");
  } else {
    // 4. Check Eligibility using a comparison operator (>=)
    if (age >= 18) {
      // 5. Print the eligibility message
      print("You are $age years old. You are eligible to vote.");
    } else {
      // 5. Print the ineligibility message
      print("You are $age years old. You are not eligible to vote yet.");
    }
  }
}
```

**How to Run:**

1.  Save the code in a file named `age_check.dart`.
2.  Open a terminal or command prompt.
3.  Navigate to the directory where you saved the file.
4.  Run the program using the Dart SDK: `dart age_check.dart`
5.  The program will prompt you to enter your age. Type an age and press Enter. The program will then print the eligibility message.