Okay, here is a beginner Dart problem focused on using a `while` loop for a countdown, along with its solution.

---

### Problem Description: Simple Countdown Timer

**Goal:** Write a Dart program that asks the user for a positive integer and then counts down from that number to 0, printing each number on a new line.

**Requirements:**

1.  **Get User Input:** Prompt the user to enter a starting number for the countdown.
2.  **Read Input:** Read the number entered by the user.
3.  **Validate Input (Basic):** Ensure the input can be converted to an integer. For simplicity, you can assume the user enters a valid non-negative integer for the core logic, but using `int.tryParse` is good practice.
4.  **Use a `while` loop:** Implement the countdown logic using a `while` loop.
5.  **Print Countdown:** Inside the loop, print the current number.
6.  **Decrement:** Decrease the number by 1 in each iteration of the loop.
7.  **Stop Condition:** The loop should continue as long as the number is greater than or equal to 0.

**Example Interaction:**

```
Enter a starting number: 5
Starting countdown...
5
4
3
2
1
0
Countdown finished!
```

---

### Dart Solution Code

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user for input
  stdout.write('Enter a starting number: '); // Use stdout.write to keep cursor on the same line

  // 2. Read the input line from the console
  String? input = stdin.readLineSync(); // Reads the input as a String? (String or null)

  // 3. Validate and Parse Input
  if (input != null) {
    // Try to convert the string input to an integer
    // int.tryParse returns null if the conversion fails, preventing crashes
    int? startNumber = int.tryParse(input);

    // Check if parsing was successful and the number is non-negative
    if (startNumber != null && startNumber >= 0) {
      print('Starting countdown...');

      // 4. Initialize the variable for the countdown
      int currentNumber = startNumber;

      // 5. Use a while loop for the countdown
      // The loop continues as long as currentNumber is greater than or equal to 0
      while (currentNumber >= 0) {
        // 6. Print the current number
        print(currentNumber);

        // 7. Decrement the number for the next iteration
        currentNumber--; // Equivalent to: currentNumber = currentNumber - 1;
      }

      print('Countdown finished!');

    } else {
      // Handle invalid input (not a valid non-negative integer)
      print('Invalid input. Please enter a non-negative whole number.');
    }
  } else {
    // Handle the case where no input was received (e.g., EOF)
    print('No input received.');
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for handling console input (`stdin`) and output (`stdout`).
2.  **`stdout.write(...)`**: Displays the prompt message to the user without moving to the next line.
3.  **`stdin.readLineSync()`**: Reads the text typed by the user until they press Enter. It returns the text as a `String?` (meaning it could be a `String` or `null`).
4.  **`if (input != null)`**: Checks if any input was actually received.
5.  **`int.tryParse(input)`**: Attempts to convert the user's string input into an integer. If the input is not a valid integer format (e.g., "hello", "5.5"), it returns `null`. This is safer than `int.parse()`, which would throw an error.
6.  **`if (startNumber != null && startNumber >= 0)`**: Checks if the conversion was successful (`startNumber` is not `null`) and if the number is 0 or positive.
7.  **`int currentNumber = startNumber;`**: Creates a variable to hold the current value in the countdown, initialized with the user's valid starting number.
8.  **`while (currentNumber >= 0)`**: This is the `while` loop condition. The code inside the loop's curly braces `{}` will execute repeatedly *as long as* `currentNumber` is greater than or equal to 0.
9.  **`print(currentNumber);`**: Prints the value of `currentNumber` during the current iteration.
10. **`currentNumber--;`**: Decrements the value of `currentNumber` by 1. This is crucial for the countdown to progress and eventually meet the loop's exit condition (`currentNumber` becoming less than 0).
11. **`else` blocks**: Handle cases where the input was `null` or couldn't be parsed into a valid non-negative integer.