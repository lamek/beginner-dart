Okay, here is a beginner Dart problem focused on operators for an age eligibility check, along with its solution.

---

**Dart Problem: Age Eligibility Check**

**Description:**

Write a Dart program that checks if a person is eligible to vote.

1.  Define an integer constant named `minimumVotingAge` and set its value to `18`.
2.  Prompt the user to enter their age.
3.  Read the user's input from the console.
4.  Convert the input string to an integer. You should handle potential errors if the user enters non-numeric input (Hint: `int.tryParse()`). If the input is invalid, assume the user is not eligible.
5.  Use a comparison operator (`>=`) to compare the user's age with the `minimumVotingAge`.
6.  Store the result of this comparison (which will be a boolean value: `true` or `false`) in a variable called `isEligible`.
7.  Print the final boolean result to the console in the format: `Eligible to vote: <result>` (e.g., `Eligible to vote: true`).

This problem focuses on using constants, basic input/output, type conversion, and comparison operators.

---

**Dart Solution:**

```dart
import 'dart:io'; // Import the io library for input/output

void main() {
  // 1. Define the minimum voting age (using const for a compile-time constant)
  const int minimumVotingAge = 18;

  // 2. Prompt the user for their age
  stdout.write("Please enter your age: "); // stdout.write keeps the cursor on the same line

  // 3. Read user input
  String? inputAgeString = stdin.readLineSync(); // Reads a line of text from the console

  // Declare the eligibility variable
  bool isEligible;

  // 4. Validate, parse input, and perform comparison
  if (inputAgeString != null) {
    // Try to parse the input string into an integer
    int? userAge = int.tryParse(inputAgeString);

    if (userAge != null) {
      // Input is a valid number, proceed with the check
      // 5. Use a comparison operator '>='
      isEligible = userAge >= minimumVotingAge;
    } else {
      // Input was not a valid number
      print("Invalid input. Age must be a number.");
      isEligible = false; // Assume not eligible if input is not a valid number
    }
  } else {
    // No input was received (e.g., user pressed Ctrl+D/Ctrl+Z)
    print("No input received.");
    isEligible = false; // Assume not eligible if no input is received
  }

  // 7. Print the boolean result
  print("Eligible to vote: $isEligible");
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for console input/output operations (`stdin`, `stdout`).
2.  **`const int minimumVotingAge = 18;`**: Declares an integer constant. `const` is used because 18 is known at compile time.
3.  **`stdout.write(...)`**: Displays the prompt message to the user without moving to the next line.
4.  **`stdin.readLineSync()`**: Reads the text entered by the user until they press Enter. It returns a `String?` (nullable String) because the user might signal the end of input.
5.  **`if (inputAgeString != null)`**: Checks if any input was actually received.
6.  **`int.tryParse(inputAgeString)`**: Attempts to convert the input `String` to an `int`. If successful, it returns the `int`; otherwise, it returns `null`. This is safer than `int.parse()` which would throw an error on invalid input.
7.  **`if (userAge != null)`**: Checks if the parsing was successful.
8.  **`isEligible = userAge >= minimumVotingAge;`**: This is the core comparison. It checks if `userAge` is greater than or equal to `minimumVotingAge`. The result (`true` or `false`) is stored in the `isEligible` boolean variable.
9.  **Error Handling**: If parsing fails (`userAge` is null) or if no input was received (`inputAgeString` is null), informative messages are printed, and `isEligible` is explicitly set to `false`.
10. **`print("Eligible to vote: $isEligible");`**: Prints the final boolean result using string interpolation (`$isEligible`).