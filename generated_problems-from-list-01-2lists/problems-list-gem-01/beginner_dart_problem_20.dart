Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Topic:** Functions (Parameters, Return Values)

**Goal:** Create and use a function to determine if a number is even.

**Task:**

1.  Define a function named `isEven`.
2.  This function should accept one parameter: an integer (`int`).
3.  Inside the function, use the modulo operator (`%`) to check if the number is even. Remember, a number is even if the remainder when divided by 2 is 0.
4.  The function should *return* a boolean value (`bool`): `true` if the number is even, and `false` if it is odd.
5.  In your `main` function, call the `isEven` function with at least three different integer values (e.g., an even number, an odd number, zero).
6.  Print the boolean result returned by each function call to the console. You can add descriptive text to make the output clear (e.g., "Is 5 even? false").

---

**Solution Code**

```dart
// Define the isEven function
// It takes an integer 'number' as input
// It returns a boolean (true if even, false if odd)
bool isEven(int number) {
  // Use the modulo operator (%) to get the remainder when dividing by 2
  // If the remainder is 0, the number is even.
  // The comparison (number % 2 == 0) directly evaluates to true or false.
  return number % 2 == 0;
}

void main() {
  // Test case 1: An even number
  int num1 = 10;
  bool result1 = isEven(num1);
  print("Is $num1 even? $result1"); // Output: Is 10 even? true

  // Test case 2: An odd number
  int num2 = 7;
  bool result2 = isEven(num2);
  print("Is $num2 even? $result2"); // Output: Is 7 even? false

  // Test case 3: Zero
  int num3 = 0;
  bool result3 = isEven(num3);
  print("Is $num3 even? $result3"); // Output: Is 0 even? true

  // Test case 4: Another odd number (calling directly in print)
  print("Is 15 even? ${isEven(15)}"); // Output: Is 15 even? false

  // Test case 5: A negative even number
  print("Is -4 even? ${isEven(-4)}"); // Output: Is -4 even? true
}
```

---