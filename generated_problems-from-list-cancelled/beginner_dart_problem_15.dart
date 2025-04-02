Okay, here is a beginner Dart problem focused on control flow (loops) and user input, along with its solution.

---

**Problem Description**

**Concept Focus:** Control Flow (Loops), Basic Input/Output

**Task:** Countdown Timer

Write a Dart program that asks the user to enter a positive integer. The program should then use a loop (`for` or `while`) to count down from the entered number to 1, printing each number on a new line. After the loop finishes (i.e., after printing 1), the program should print the message "Blast off!".

**Requirements:**

1.  Prompt the user to enter a starting number.
2.  Read the user's input from the console.
3.  Convert the input string to an integer. You should handle the case where the input might not be a valid positive integer (e.g., print an error message and exit, or ask again - for simplicity, printing an error and exiting is fine for this beginner problem).
4.  Use a `for` loop or a `while` loop to perform the countdown.
5.  Inside the loop, print the current countdown number.
6.  After the loop completes, print "Blast off!".

**Example Interaction:**

```
Enter a starting number for the countdown:
5

Starting countdown from 5...
5
4
3
2
1
Blast off!
```

**Hint:** You'll need to import `dart:io` to read user input using `stdin.readLineSync()`. Use `int.tryParse()` for safer integer conversion.

---

**Solution Code**

```dart
import 'dart:io'; // Import the I/O library for console input

void main() {
  // 1. Prompt the user
  print("Enter a starting number for the countdown:");

  // 2. Read user input
  String? input = stdin.readLineSync(); // Reads a line of text from the console

  // 3. Convert input to integer and validate
  int? startNumber; // Use nullable int for tryParse result

  if (input != null) {
    startNumber = int.tryParse(input); // Safely try to convert String to int
  }

  // Check if conversion failed or if the number is not positive
  if (startNumber == null || startNumber <= 0) {
    print("Invalid input. Please enter a positive whole number.");
    return; // Exit the program if input is invalid
  }

  print("\nStarting countdown from $startNumber...");

  // 4. Use a loop (for loop example) for countdown
  for (int i = startNumber; i >= 1; i--) {
    // 5. Print the current number
    print(i);
  }

  /*
  // --- Alternative using a while loop ---
  int currentNumber = startNumber;
  while (currentNumber >= 1) {
    print(currentNumber);
    currentNumber--; // Decrement the counter
  }
  */

  // 6. Print the final message after the loop
  print("Blast off!");
}
```

---