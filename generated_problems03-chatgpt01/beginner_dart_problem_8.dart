Okay, here is a beginner Dart problem focusing on operators for a voting eligibility check.

---

**Problem Description: Voting Eligibility Checker**

Write a Dart program that determines if a person is eligible to vote based on their age.

**Requirements:**

1.  Prompt the user to enter their age.
2.  Read the age entered by the user from the console.
3.  Convert the input (which is initially a String) into an integer.
4.  Use a comparison operator (`>=`) to check if the age is 18 or greater.
5.  Print one of the following messages to the console:
    *   "You are eligible to vote!" if the age is 18 or older.
    *   "You are not eligible to vote yet." if the age is less than 18.
6.  Handle potential errors, such as the user entering non-numeric input.

**Concepts to Practice:**

*   Getting user input (`stdin.readLineSync()`).
*   Type conversion (`int.parse()`).
*   Comparison operators (`>=`).
*   Conditional statements (`if/else`).
*   Basic error handling (`try-catch`).
*   Printing output (`print()`).

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user for their age
  stdout.write('Please enter your age: '); // stdout.write keeps the cursor on the same line

  // 2. Read the input from the console
  String? inputAge = stdin.readLineSync(); // Reads the input line as a String? (nullable String)

  // Basic check if input was received
  if (inputAge == null || inputAge.isEmpty) {
    print('No input received. Exiting.');
    return; // Exit the program if no input
  }

  try {
    // 3. Convert the input string to an integer
    int age = int.parse(inputAge);

    // 4. Use a comparison operator (>=) in an if/else statement
    if (age >= 18) {
      // 5a. Print eligibility message
      print('You are eligible to vote!');
    } else {
      // 5b. Print ineligibility message
      print('You are not eligible to vote yet.');
    }
  } on FormatException {
    // 6. Handle non-numeric input error
    print('Invalid input. Please enter a valid number for your age.');
  } catch (e) {
    // Handle other potential errors during parsing or execution
    print('An unexpected error occurred: $e');
  }
}
```

---