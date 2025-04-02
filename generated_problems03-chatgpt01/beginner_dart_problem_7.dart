Okay, here is a beginner Dart problem focused on operators, specifically the modulus operator for checking even or odd numbers.

---

**Problem Description**

**Title:** Even or Odd Checker

**Goal:** Write a Dart program that asks the user to enter an integer and then determines if that integer is even or odd.

**Requirements:**

1.  **Prompt User:** Display a message asking the user to input an integer.
2.  **Read Input:** Read the integer value entered by the user from the console.
3.  **Check Even/Odd:** Use the modulus operator (`%`) to determine if the number is divisible by 2.
    *   An integer is **even** if the remainder when divided by 2 is 0.
    *   An integer is **odd** if the remainder when divided by 2 is not 0 (it will be 1 for positive integers).
4.  **Display Result:** Print a clear message indicating whether the entered number is even or odd.
5.  **Handle Input (Basic):** Assume the user enters a valid integer for simplicity in this basic version. (A more robust solution would handle non-integer input, but that's beyond this specific operator focus).

**Operators to Use:**

*   Arithmetic Operator: `%` (modulus/remainder)
*   Comparison Operator: `==` (equality)

---

**Solution Code**

```dart
import 'dart:io'; // Import the io library for input/output

void main() {
  // 1. Prompt User
  print('--- Even or Odd Checker ---');
  print('Please enter an integer:');

  // 2. Read Input
  // Read line from console, trim whitespace, handle potential null
  String? inputString = stdin.readLineSync(); 

  // Basic input check and conversion
  if (inputString != null && inputString.isNotEmpty) {
    try {
      // Attempt to parse the input string into an integer
      int number = int.parse(inputString);

      // 3. Check Even/Odd using modulus (%) and comparison (==) operators
      if (number % 2 == 0) {
        // 4. Display Result (Even)
        print('$number is an even number.'); 
      } else {
        // 4. Display Result (Odd)
        print('$number is an odd number.');
      }
    } catch (e) {
      // Handle cases where the input wasn't a valid integer
      print('Invalid input. Please enter a whole number.'); 
    }
  } else {
    // Handle cases where no input was received
    print('No input received.');
  }
}
```

**Explanation:**

1.  `import 'dart:io';`: This line imports the necessary library for handling console input (`stdin`) and output (`print`).
2.  `void main()`: The entry point of the Dart application.
3.  `print(...)`: Displays messages to the user on the console.
4.  `stdin.readLineSync()`: Reads a line of text entered by the user from the console. It returns a `String?` (String or null).
5.  `if (inputString != null ...)`: Checks if input was actually received.
6.  `try { ... } catch (e) { ... }`: This block attempts to convert the input `String` to an `int` using `int.parse()`. If the user enters something that isn't a valid integer (like "hello" or "1.5"), `int.parse()` will throw an error (exception), which the `catch` block handles gracefully by printing an error message.
7.  `int number = int.parse(inputString);`: Converts the user's input string into an integer number.
8.  `if (number % 2 == 0)`: This is the core logic.
    *   `number % 2`: Calculates the remainder when `number` is divided by 2.
    *   `== 0`: Compares the remainder to 0. If it's equal, the number is even.
9.  `print('$number is ...');`: Uses string interpolation (`$variable`) to include the value of the `number` variable directly within the output string.