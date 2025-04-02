Okay, here is a beginner Dart problem focusing on operators, specifically the modulo operator for an even/odd check, along with its solution.

---

**Dart Beginner Problem: Even or Odd Checker**

**Problem Description:**

Write a Dart program that determines if a given integer is even or odd.

1.  **Input:** You'll start with a predefined integer variable within your code (e.g., `int number = 10;`). You can change this value to test different numbers.
2.  **Process:** Use the arithmetic modulo operator (`%`) to find the remainder when the integer is divided by 2.
3.  **Logic:** Use a comparison operator (`==`) to check if the remainder is equal to 0.
4.  **Output:** Print a message to the console stating whether the original number is "Even" or "Odd". For example, if the input number is 10, the output should be "10 is Even.". If the input number is 7, the output should be "7 is Odd.".

**Focus:** This problem helps you practice using:
*   Variable declaration (`int`)
*   Arithmetic operators (`%`)
*   Comparison operators (`==`)
*   Conditional logic (`if-else`)
*   Printing output (`print()`)

---

**Solution Code:**

```dart
// main function - the entry point of every Dart program
void main() {
  // 1. Input: Define an integer variable.
  //    Try changing this value to test different scenarios (e.g., 7, 0, -4)
  int number = 10;

  // 2. Process: Calculate the remainder when divided by 2 using the modulo operator (%).
  //    If a number is perfectly divisible by 2, the remainder will be 0.
  int remainder = number % 2;

  // 3. Logic & Output: Check the remainder using a comparison operator (==)
  //    and print the result.
  if (remainder == 0) {
    // If the remainder is 0, the number is even.
    print('$number is Even.'); // Using string interpolation to include the number in the output
  } else {
    // If the remainder is not 0, the number is odd.
    print('$number is Odd.');
  }

  // --- Example with a different number ---
  int secondNumber = 7;
  int secondRemainder = secondNumber % 2;

  if (secondRemainder == 0) {
    print('$secondNumber is Even.');
  } else {
    print('$secondNumber is Odd.');
  }
}

/*
Expected Output when running this code:

10 is Even.
7 is Odd.

*/
```