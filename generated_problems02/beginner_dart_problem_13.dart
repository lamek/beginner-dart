Okay, here is a beginner Dart problem focused on control flow, specifically using a `while` loop for a countdown timer, along with its solution.

---

**Problem Description: Simple Countdown Timer**

**Goal:** Write a Dart program that simulates a simple countdown timer.

**Requirements:**

1.  **Get Input:** Prompt the user to enter a positive integer. This number will be the starting point for the countdown.
2.  **Input Validation (Basic):** Ensure the input can be converted to an integer. If not, print an error message. For simplicity in this beginner problem, you can assume the user enters a non-negative number if the input *is* a number.
3.  **Countdown Logic:** Use a `while` loop to count down from the user-provided starting number.
4.  **Output:** Print each number during the countdown, starting from the input number down to and including 0. Each number should be printed on a new line.
5.  **Completion Message:** After the countdown reaches 0, print a final message like "Blast off!".

**Example Interaction:**

```
Enter a starting number for the countdown: 5
5
4
3
2
1
0
Blast off!
```

---

**Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Get Input
  print('Enter a starting number for the countdown:');
  String? inputString = stdin.readLineSync(); // Read line from console (can be null)

  int? startNumber; // Declare a nullable integer for the starting number

  // 2. Input Validation (Basic)
  if (inputString != null) {
    startNumber = int.tryParse(inputString); // Try to convert String to int
  }

  // Check if conversion failed or number is negative (optional but good practice)
  if (startNumber == null || startNumber < 0) {
    print('Invalid input. Please enter a non-negative whole number.');
    return; // Exit the program if input is invalid
  }

  // 3. Countdown Logic (using while loop)
  print('Starting countdown from $startNumber...');
  int currentNumber = startNumber; // Initialize counter

  while (currentNumber >= 0) {
    // 4. Output
    print(currentNumber); // Print the current number
    currentNumber--; // Decrement the counter (currentNumber = currentNumber - 1)
  }

  // 5. Completion Message
  print('Blast off!');
}
```

**Explanation:**

1.  **`import 'dart:io';`**: This line imports the necessary library to interact with standard input/output (like reading from the console).
2.  **`stdin.readLineSync()`**: Reads a line of text entered by the user in the console. It returns a `String?` (String or null).
3.  **`int.tryParse(inputString)`**: Attempts to convert the input string into an integer. If successful, it returns the integer; otherwise, it returns `null`. This is safer than `int.parse()` which would throw an error on invalid input.
4.  **`if (startNumber == null || startNumber < 0)`**: This `if` statement checks if the conversion failed (`startNumber` is still `null`) or if the user entered a negative number. If either is true, it prints an error and `return` stops the `main` function.
5.  **`int currentNumber = startNumber;`**: A variable `currentNumber` is created and initialized with the valid starting number provided by the user.
6.  **`while (currentNumber >= 0)`**: This is the `while` loop. The code inside the curly braces `{}` will keep executing as long as the condition `currentNumber >= 0` is true.
7.  **`print(currentNumber);`**: Prints the value of `currentNumber` on each iteration.
8.  **`currentNumber--;`**: Decrements `currentNumber` by 1 after each iteration. Eventually, `currentNumber` will become less than 0, causing the loop condition to become false and the loop to terminate.
9.  **`print('Blast off!');`**: This line executes only *after* the `while` loop has finished.