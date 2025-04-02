Okay, here is a beginner Dart problem focused on using a `while` loop for a countdown, along with its solution.

---

**Problem Description**

**Title:** Simple Countdown Timer

**Goal:** Write a Dart program that acts as a simple countdown timer.

**Requirements:**

1.  **Prompt User:** Ask the user to enter a positive integer to start the countdown from.
2.  **Read Input:** Read the number entered by the user.
3.  **Validate Input:** Ensure the input is a valid positive integer. If not, print an error message and exit.
4.  **Countdown Logic:** Use a `while` loop to count down from the entered number to 1.
5.  **Print Output:** Inside the loop, print each number on a new line as it counts down.
6.  **Completion Message:** After the loop finishes (reaches 1), print a message like "Blast off!" or "Countdown finished!".

**Example Interaction:**

```
Enter a positive starting number for the countdown: 5
Starting countdown...
5
4
3
2
1
Countdown finished!
```

**Hint:** You will need to use `dart:io` to read user input and `int.tryParse()` to convert the input string to an integer safely. The `while` loop condition should check if the current count is greater than or equal to 1. Remember to decrease the counter variable inside the loop.

---

**Dart Solution**

```dart
import 'dart:io'; // Import the dart:io library for input/output functions

void main() {
  // 1. Prompt User and 2. Read Input
  stdout.write('Enter a positive starting number for the countdown: ');
  String? input = stdin.readLineSync(); // Read user input as a string (can be null)

  // 3. Validate Input
  if (input == null || input.isEmpty) {
    print('Error: No input provided.');
    return; // Exit the program
  }

  // Try parsing the input string into an integer
  int? startNumber = int.tryParse(input);

  if (startNumber == null) {
    print('Error: Invalid input. Please enter a whole number.');
    return; // Exit the program
  }

  if (startNumber <= 0) {
    print('Error: Please enter a positive number greater than 0.');
    return; // Exit the program
  }

  // If input is valid, proceed with the countdown
  print('Starting countdown...');

  // Initialize the counter variable
  int currentCount = startNumber;

  // 4. Countdown Logic (using a while loop)
  while (currentCount >= 1) {
    // 5. Print Output
    print(currentCount);

    // Decrease the counter for the next iteration
    currentCount--; // Equivalent to currentCount = currentCount - 1;
  }

  // 6. Completion Message
  print('Countdown finished!');
}
```

---