Okay, here is a beginner Dart problem based on your description, followed by its solution.

---

**Problem Description: Even or Odd Number Check**

**Objective:** Write a Dart program that checks if a given integer is even or odd.

**Requirements:**

1.  **Declare an integer variable:** Create a variable of type `int` and assign it a whole number (e.g., 5, 10, 27).
2.  **Use the modulo operator (`%`):** Calculate the remainder when the integer variable is divided by 2.
3.  **Use the equality operator (`==`):** Compare the remainder obtained in the previous step with 0.
4.  **Conditional Logic:** Use an `if-else` statement based on the comparison result.
5.  **Print the result:**
    *   If the remainder is 0, print a message indicating that the number is even.
    *   If the remainder is not 0, print a message indicating that the number is odd.

**Example Output (for number = 10):**
`10 is an even number.`

**Example Output (for number = 7):**
`7 is an odd number.`

---

**Solution Code:**

```dart
void main() {
  // 1. Declare an integer variable and assign a value.
  //    You can change this value to test different numbers.
  int number = 10;

  // 2. Use the modulo operator (%) to find the remainder when divided by 2.
  // 3. Use the equality operator (==) to check if the remainder is 0.
  // 4. Use an if-else statement for conditional logic.
  if (number % 2 == 0) {
    // 5. Print the result if the number is even.
    print('$number is an even number.');
  } else {
    // 5. Print the result if the number is odd.
    print('$number is an odd number.');
  }

  // --- Optional: Test with another number ---
  number = 7; // Change the value of the variable

  if (number % 2 == 0) {
    print('$number is an even number.');
  } else {
    print('$number is an odd number.');
  }
}
```

---