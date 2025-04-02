Okay, here is a beginner Dart problem focusing on control flow, specifically using a loop for a countdown, along with its solution.

---

### Problem Description

**Title:** Dart Control Flow: Countdown Timer

**Goal:** Write a Dart program that simulates a simple countdown timer.

**Requirements:**

1.  **Prompt User:** Ask the user to enter a positive integer to start the countdown from.
2.  **Read Input:** Read the integer value provided by the user.
3.  **Validate Input (Optional but Recommended):** Ensure the input is a valid positive integer. If not, print an error message.
4.  **Countdown Loop:** If the input is valid, use a `while` loop (or a `for` loop) to count down from the user's number to 1.
5.  **Print Numbers:** Inside the loop, print the current countdown number on a new line.
6.  **Final Message:** After the loop finishes (i.e., after printing '1'), print the message "Blast off!".

**Example Interaction:**

```
Enter a starting number for the countdown: 5
Countdown starting from 5:
5
4
3
2
1
Blast off!
```

**Another Example (Invalid Input):**

```
Enter a starting number for the countdown: 0
Please enter a positive number greater than 0.
```

**Hint:** You'll need to use `dart:io` to read user input and `int.tryParse()` to safely convert the input string to an integer.

---

### Solution Code

```dart
import 'dart:io'; // Import the I/O library for interacting with the user

void main() {
  // 1. Prompt User
  stdout.write('Enter a starting number for the countdown: ');

  // 2. Read Input
  String? input = stdin.readLineSync(); // Read the input line as a String?

  // Check if input was actually received
  if (input == null) {
    print('No input received. Exiting.');
    return; // Exit the program if input is null
  }

  // 3. Validate Input (using int.tryParse for safety)
  int? startNumber = int.tryParse(input); // Try to convert String to int

  if (startNumber == null) {
    // Handle non-integer input
    print('Invalid input. Please enter a whole number.');
  } else if (startNumber <= 0) {
    // Handle non-positive input
    print('Please enter a positive number greater than 0.');
  } else {
    // Input is a valid positive integer, proceed with countdown

    print('Countdown starting from $startNumber:');

    // 4. Countdown Loop (using a while loop)
    int currentNumber = startNumber; // Initialize counter variable
    while (currentNumber >= 1) {
      // 5. Print Numbers
      print(currentNumber);
      currentNumber--; // Decrement the counter for the next iteration
    }

    // 6. Final Message
    print('Blast off!');
  }
}
```

---