Okay, here is a beginner Dart problem focused on control flow (loops) and its solution.

---

**Problem Description**

**Title:** Sum of First N Natural Numbers

**Objective:**
Write a Dart program that asks the user to enter a positive integer, N. The program should then calculate the sum of all the whole numbers starting from 1 up to and including N.

**Requirements:**
1.  Prompt the user to enter a positive integer N.
2.  Read the integer value entered by the user.
3.  Use a loop (`for` or `while`) to iterate from 1 to N.
4.  Calculate the sum of these numbers.
5.  Print the final calculated sum to the console in a user-friendly format.

**Example:**
If the user enters `5`, the program should calculate `1 + 2 + 3 + 4 + 5` and output:
`The sum of numbers from 1 to 5 is 15.`

**Hint:** You'll need to use `dart:io` to read input from the console and potentially `int.parse()` or `int.tryParse()` to convert the input string to an integer. Remember to handle potential invalid input (like non-numbers or negative numbers) gracefully.

---

**Dart Solution**

```dart
import 'dart:io';

void main() {
  // 1. Prompt the user
  stdout.write('Enter a positive integer N: ');

  // 2. Read the input string
  String? input = stdin.readLineSync();

  // 3. Validate and parse the input
  if (input == null) {
    print('Error reading input.');
    return; // Exit if input reading failed
  }

  int? n = int.tryParse(input); // Use tryParse for safer conversion

  if (n == null || n <= 0) {
    // Check if parsing failed or if the number is not positive
    print('Invalid input. Please enter a positive whole number.');
    return; // Exit if input is invalid
  }

  // 4. Initialize the sum variable
  int sum = 0;

  // 5. Use a for loop to calculate the sum
  // The loop starts at 1, continues as long as i is less than or equal to n,
  // and increments i by 1 in each iteration.
  for (int i = 1; i <= n; i++) {
    sum = sum + i; // Add the current number (i) to the sum
    // Alternatively, you can use the shorthand: sum += i;
  }

  // 6. Print the final result
  print('The sum of numbers from 1 to $n is $sum.');
}
```

---