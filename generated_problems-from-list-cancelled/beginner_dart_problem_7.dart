Okay, here is a beginner Dart problem focusing on operators for checking even or odd numbers, along with its solution.

---

**Problem Description**

**Title:** Even or Odd Checker

**Objective:**
Write a Dart program that takes a predefined integer and determines if that number is even or odd.

**Requirements:**
1.  Declare an integer variable and assign a whole number value to it (e.g., `10`, `7`, `42`, `-5`).
2.  Use the modulo operator (`%`) to find the remainder when the number is divided by 2.
3.  Use a comparison operator (`==`) within an `if-else` statement to check if the remainder is 0.
4.  Print a message to the console indicating whether the number is even or odd. The message should include the original number.

**Example Output (if the number is 10):**
```
10 is even
```

**Example Output (if the number is 7):**
```
7 is odd
```

---

**Dart Solution**

```dart
void main() {
  // 1. Declare an integer variable and assign a value.
  //    You can change this value to test different numbers.
  int number = 10;
  // int number = 7; // Uncomment this line to test an odd number

  print("Checking the number: $number");

  // 2. Use the modulo operator (%) to get the remainder when divided by 2.
  int remainder = number % 2;

  // 3. Use an if-else statement and a comparison operator (==)
  //    to check if the remainder is 0.
  if (remainder == 0) {
    // If the remainder is 0, the number is even.
    // 4. Print the result using string interpolation.
    print('$number is even');
  } else {
    // If the remainder is not 0, the number is odd.
    // 4. Print the result using string interpolation.
    print('$number is odd');
  }

  // --- Alternative shorter version (combining steps 2 & 3) ---
  // You could also write the check directly inside the if condition:
  /*
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
  */
}
```

**Explanation:**

1.  `void main()`: The entry point of every Dart program.
2.  `int number = 10;`: Declares an integer variable named `number` and initializes it with the value `10`.
3.  `int remainder = number % 2;`: The modulo operator `%` calculates the remainder of the division `number / 2`. If a number is perfectly divisible by 2, the remainder is 0 (it's even). Otherwise, the remainder is 1 (it's odd, for positive integers).
4.  `if (remainder == 0)`: This checks if the value stored in the `remainder` variable is exactly equal to 0 using the comparison operator `==`.
5.  `print('$number is even');`: If the condition `remainder == 0` is true, this line is executed. It uses string interpolation (`$variableName`) to include the value of `number` in the output string.
6.  `else`: If the condition in the `if` statement is false.
7.  `print('$number is odd');`: This line is executed if the remainder was not 0, meaning the number is odd.
8.  The commented-out section shows a more concise way to write the same logic by performing the modulo operation directly within the `if` condition.