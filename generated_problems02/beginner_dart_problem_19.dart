Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Title:** Find the Maximum of Three Numbers

**Goal:** Write a Dart function that takes three numbers as input and returns the largest of the three.

**Detailed Requirements:**

1.  **Create a Function:** Define a function named `findMaximum`.
2.  **Parameters:** The function should accept three parameters, each representing a number (you can use the `num` type to allow both integers and doubles).
3.  **Logic:** Inside the function, compare the three numbers to find the one with the highest value.
4.  **Return Value:** The function should return the number that was determined to be the maximum.
5.  **Call the Function:** In your `main` function, call `findMaximum` with a set of sample numbers (e.g., 10, 25, 15).
6.  **Print the Result:** Print the value returned by the `findMaximum` function to the console in a user-friendly format (e.g., "The maximum number is: 25").

---

**Dart Solution**

```dart
import 'dart:math'; // Although not strictly needed for the sequential if approach, 
                  // good practice to know it exists for 'max'. We'll use sequential ifs below.

// Function definition:
// Takes three numbers (a, b, c) as parameters.
// Returns the largest number among the three.
num findMaximum(num a, num b, num c) {
  // Assume the first number 'a' is the maximum initially.
  num maxNum = a;

  // Compare 'b' with the current maximum.
  if (b > maxNum) {
    maxNum = b; // If 'b' is larger, update maxNum to 'b'.
  }

  // Compare 'c' with the current maximum.
  if (c > maxNum) {
    maxNum = c; // If 'c' is larger, update maxNum to 'c'.
  }

  // Return the final maximum value found.
  return maxNum;
}

void main() {
  // Define three sample numbers.
  num number1 = 10;
  num number2 = 25;
  num number3 = 15;

  // Call the function with the sample numbers.
  num maximum = findMaximum(number1, number2, number3);

  // Print the result to the console.
  print("Finding the maximum of $number1, $number2, and $number3...");
  print("The maximum number is: $maximum"); // Output: The maximum number is: 25

  // Test with another set of numbers, including doubles and negatives
  num result2 = findMaximum( -5.5, -2.1, -8.0);
  print("\nFinding the maximum of -5.5, -2.1, and -8.0...");
  print("The maximum number is: $result2"); // Output: The maximum number is: -2.1
  
  // Test with duplicate maximums
  num result3 = findMaximum( 100, 50, 100);
   print("\nFinding the maximum of 100, 50, and 100...");
  print("The maximum number is: $result3"); // Output: The maximum number is: 100
}
```

**Explanation:**

1.  The `findMaximum` function takes `num a`, `num b`, `num c` as input. `num` is used so it works with both integers (`int`) and decimal numbers (`double`).
2.  It initializes a variable `maxNum` with the value of the first parameter `a`.
3.  It then uses `if` statements to compare `b` and `c` sequentially against the current `maxNum`. If either `b` or `c` is found to be greater than the current `maxNum`, `maxNum` is updated.
4.  Finally, the function returns the value stored in `maxNum` after all comparisons are done.
5.  The `main` function demonstrates how to call `findMaximum` with different sets of numbers and how to print the returned result using string interpolation (`$variableName`).