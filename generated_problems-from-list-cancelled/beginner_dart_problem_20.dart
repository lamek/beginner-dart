Okay, here is the beginner Dart problem and its solution.

---

**Problem Description: Is Even Function**

**Goal:** Create a function in Dart that determines if a given integer is even or odd.

**Requirements:**

1.  Define a function named `isEven`.
2.  The function must accept one parameter of type `int`.
3.  The function must *return* a value of type `bool`.
    *   It should return `true` if the input integer is even.
    *   It should return `false` if the input integer is odd.
4.  Inside the function, use the modulo operator (`%`) to check if the number is divisible by 2.
5.  In your `main` function, call the `isEven` function with at least three different integer values (e.g., an even number, an odd number, and zero).
6.  Print the boolean result returned by each function call to the console.

---

**Dart Solution Code**

```dart
// Function Definition: isEven
// Takes an integer 'number' as input.
// Returns true if the number is even, false otherwise.
bool isEven(int number) {
  // Use the modulo operator (%) to get the remainder when dividing by 2.
  // If the remainder is 0, the number is even.
  return number % 2 == 0; 
}

// Main function - the entry point of the program
void main() {
  // Test cases: Calling the isEven function with different numbers
  
  int num1 = 4;
  bool result1 = isEven(num1);
  print("Is $num1 even? $result1"); // Expected output: Is 4 even? true

  int num2 = 7;
  bool result2 = isEven(num2);
  print("Is $num2 even? $result2"); // Expected output: Is 7 even? false

  int num3 = 0;
  bool result3 = isEven(num3);
  print("Is $num3 even? $result3"); // Expected output: Is 0 even? true

  int num4 = -10;
  bool result4 = isEven(num4);
  print("Is $num4 even? $result4"); // Expected output: Is -10 even? true
  
  int num5 = -5;
  bool result5 = isEven(num5);
  print("Is $num5 even? $result5"); // Expected output: Is -5 even? false
}
```