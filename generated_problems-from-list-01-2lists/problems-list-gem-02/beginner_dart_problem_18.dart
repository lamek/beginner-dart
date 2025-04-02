Okay, here is the Dart problem and its solution.

--- Problem Description ---

**Dart Problem: `isPositive` Function**

**Goal:** Learn how to define and use a simple Dart function with a parameter and a boolean return value.

**Task:**

1.  **Define a function** named `isPositive`.
2.  This function should accept one **parameter**: an integer (`int`) named `number`.
3.  The function should **return** a boolean value (`bool`):
    *   `true` if the `number` passed to it is strictly greater than 0.
    *   `false` if the `number` is 0 or less than 0.
4.  **In the `main` function:**
    *   Call the `isPositive` function with a positive integer (e.g., 10).
    *   Call the `isPositive` function with a negative integer (e.g., -5).
    *   Call the `isPositive` function with zero (0).
    *   Print the boolean result returned by each function call to the console, perhaps with a descriptive message (e.g., "Is 10 positive? true").

--- Solution Code ---

```dart
// Function Definition: isPositive
// Takes an integer 'number' as input.
// Returns true if number > 0, false otherwise.
bool isPositive(int number) {
  // The comparison 'number > 0' directly evaluates to a boolean.
  return number > 0; 
  
  /* 
  // Alternative longer way using if/else:
  if (number > 0) {
    return true;
  } else {
    return false;
  }
  */
}

// Main function - the entry point of the program
void main() {
  // Test cases
  int positiveNumber = 10;
  int negativeNumber = -5;
  int zeroNumber = 0;

  // Call the function and store the results
  bool result1 = isPositive(positiveNumber);
  bool result2 = isPositive(negativeNumber);
  bool result3 = isPositive(zeroNumber);

  // Print the results
  print("Is $positiveNumber positive? $result1"); // Expected output: Is 10 positive? true
  print("Is $negativeNumber positive? $result2"); // Expected output: Is -5 positive? false
  print("Is $zeroNumber positive? $result3");     // Expected output: Is 0 positive? false 
}
```