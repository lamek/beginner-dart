Okay, here is a beginner Dart problem focusing on operators, specifically the modulo operator for an even/odd check, along with its solution.

---

**Problem Description**

**Title:** Dart Problem: Even or Odd Checker

**Level:** Beginner

**Concepts Covered:**
*   Basic Input/Output (`dart:io`)
*   Variable Declaration (`int`, `String?`)
*   Type Conversion (`int.tryParse`)
*   Arithmetic Operators (Modulo `%`)
*   Comparison Operators (`==`)
*   Conditional Statements (`if/else`)
*   String Interpolation

**Description:**
Write a Dart program that prompts the user to enter an integer. The program should then read the input, determine if the number is even or odd using the modulo operator (`%`), and print the result to the console in the format "`<number> is even.`" or "`<number> is odd.`".

**Requirements:**
1.  Display a message asking the user to enter an integer.
2.  Read the user's input from the console.
3.  Convert the input string to an integer. Handle cases where the input might not be a valid integer.
4.  Use the modulo operator (`%`) and a comparison operator (`==`) within an `if/else` statement to check if the number is even (`number % 2 == 0`) or odd.
5.  Print the final result clearly indicating the number and whether it's even or odd.

**Example Interaction:**

```
Enter an integer: 10
10 is even.
```

```
Enter an integer: 7
7 is odd.
```

```
Enter an integer: abc
Invalid input. Please enter a valid integer.
```

---

**Solution**

```dart
import 'dart:io'; // Import the dart:io library for input/output operations

void main() {
  // 1. Prompt the user for input
  stdout.write('Enter an integer: '); // Use stdout.write to keep the cursor on the same line

  // 2. Read user input from the console
  String? input = stdin.readLineSync(); // Reads the line entered by the user as a String? (nullable String)

  // Check if input is null (e.g., end of input stream)
  if (input == null) {
    print('No input received.');
    return; // Exit the program
  }

  // 3. Try to convert the input string to an integer
  // int.tryParse returns an int if successful, or null if the string is not a valid integer representation.
  int? number = int.tryParse(input);

  // 4. Check if parsing was successful and perform the even/odd check
  if (number == null) {
    // Handle invalid input
    print('Invalid input. Please enter a valid integer.');
  } else {
    // Parsing was successful, proceed with the check
    // Use the modulo operator (%) to get the remainder when dividing by 2
    // If the remainder is 0, the number is even. Otherwise, it's odd.
    if (number % 2 == 0) {
      // 5. Print the result for even numbers
      print('$number is even.'); // Use string interpolation ($) to include the variable value
    } else {
      // 5. Print the result for odd numbers
      print('$number is odd.');
    }
  }
}
```

---