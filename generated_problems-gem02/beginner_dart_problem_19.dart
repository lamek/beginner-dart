Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

## Problem Description

**Title:** Simple Addition Function

**Goal:** Create a function in Dart that performs addition.

**Requirements:**

1.  Define a function named `addTwoNumbers`.
2.  This function should accept two integer (`int`) parameters. Let's call them `num1` and `num2`.
3.  Inside the function, calculate the sum of `num1` and `num2`.
4.  The function should return the calculated sum (which will also be an integer).
5.  Write a `main` function to test your `addTwoNumbers` function. Inside `main`:
    *   Call `addTwoNumbers` with two sample integer values (e.g., 5 and 7).
    *   Store the returned result in a variable.
    *   Print the result to the console in a user-friendly format (e.g., "The sum is: 12").

---

## Dart Solution

```dart
// Function definition:
// - Takes two integer parameters: num1 and num2
// - Returns an integer (the sum)
int addTwoNumbers(int num1, int num2) {
  // Calculate the sum
  int sum = num1 + num2;
  // Return the calculated sum
  return sum;

  // Alternatively, you could write this more concisely as:
  // return num1 + num2;
}

// Main function - the entry point of the program
void main() {
  // Define two integer variables to pass to the function
  int numberA = 5;
  int numberB = 7;

  // Call the addTwoNumbers function with numberA and numberB
  // Store the returned value (the sum) in the 'result' variable
  int result = addTwoNumbers(numberA, numberB);

  // Print the result to the console
  print('The sum of $numberA and $numberB is: $result'); // Output: The sum of 5 and 7 is: 12

  // You can also call the function with different values directly
  int result2 = addTwoNumbers(10, 20);
  print('Another sum: $result2'); // Output: Another sum: 30
}
```

---