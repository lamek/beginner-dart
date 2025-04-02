Okay, here is a beginner Dart problem focusing on arithmetic and comparison operators, specifically for checking if a number is even or odd.

---

**Problem Description: Even or Odd Checker**

**Goal:** Write a Dart program that asks the user to enter an integer and then determines if that integer is even or odd.

**Requirements:**

1.  **Prompt User:** Display a message asking the user to input a whole number (an integer).
2.  **Read Input:** Read the number entered by the user from the console.
3.  **Convert Input:** Convert the user's input (which is initially a String) into an integer. You should handle potential errors if the user doesn't enter a valid number.
4.  **Check Even/Odd:** Use the modulo arithmetic operator (`%`) to find the remainder when the number is divided by 2.
5.  **Compare:** Use a comparison operator (`==`) to check if the remainder is 0.
6.  **Print Result:** Based on the comparison, print a message indicating whether the original number entered by the user is "even" or "odd".

**Example Interaction:**

```
Please enter an integer: 7
7 is odd.
```

```
Please enter an integer: 12
12 is even.
```

```
Please enter an integer: hello
Invalid input. Please enter a valid integer.
```

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output operations

void main() {
  // 1. Prompt User
  // Use stdout.write to keep the cursor on the same line after the prompt
  stdout.write('Please enter an integer: ');

  // 2. Read Input
  String? input = stdin.readLineSync(); // Reads the line entered by the user as a String? (nullable String)

  // 3. Validate and Convert Input
  if (input == null || input.isEmpty) {
    // Handle cases where input is null (e.g., end-of-file) or empty
    print('No input received. Exiting.');
    return; // Exit the program
  }

  // Use int.tryParse for safe conversion. It returns null if parsing fails.
  int? number = int.tryParse(input);

  if (number == null) {
    // Handle cases where the input was not a valid integer format
    print('Invalid input. Please enter a valid integer.');
  } else {
    // 4. Check Even/Odd using the modulo operator (%)
    // The modulo operator gives the remainder of a division.
    // If a number divided by 2 has a remainder of 0, it's even.
    int remainder = number % 2;

    // 5. Compare the remainder
    // Use the equality comparison operator (==)
    if (remainder == 0) {
      // 6. Print Result (Even)
      print('$number is even.');
    } else {
      // 6. Print Result (Odd)
      // If the remainder is not 0, the number is odd.
      print('$number is odd.');
    }
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: This line imports the necessary library to interact with standard input (`stdin`) and standard output (`stdout`).
2.  **`stdout.write(...)`**: This prints the prompt message without adding a newline character at the end, so the user types their input on the same line.
3.  **`stdin.readLineSync()`**: This reads the full line entered by the user until they press Enter. It returns the input as a `String?` (String or null).
4.  **`if (input == null || input.isEmpty)`**: Basic validation to check if anything was entered.
5.  **`int.tryParse(input)`**: This attempts to convert the `input` String into an `int`. If the string contains a valid integer representation (like "123"), it returns the `int`. If not (like "hello" or ""), it returns `null`. This is safer than `int.parse()`, which would throw an error on invalid input.
6.  **`if (number == null)`**: Checks if `tryParse` failed (returned `null`). If so, it prints an error message.
7.  **`else { ... }`**: This block executes only if `tryParse` was successful and `number` holds a valid integer.
8.  **`int remainder = number % 2;`**: This is the core logic. The modulo operator (`%`) calculates the remainder of `number` divided by 2.
9.  **`if (remainder == 0)`**: This uses the equality operator (`==`) to check if the remainder is exactly 0.
10. **`print('$number is even.');` / `print('$number is odd.');`**: Based on the comparison result, the appropriate message is printed using string interpolation (`$number`) to include the original number in the output.