Okay, here is a beginner Dart problem focusing on `for` loops and `if` conditions to manipulate number sequences.

---

**Problem Description**

**Title:** Printing Number Sequences

**Objective:** Write a Dart program that uses control flow structures (`for` loop and `if` statement) to print sequences of numbers based on certain criteria.

**Tasks:**

1.  **Print All Numbers:** Use a `for` loop to iterate through numbers from 1 up to and including 10. Print each number on a new line.
2.  **Print Only Even Numbers:** Use a *second* `for` loop (again from 1 to 10). Inside the loop, use an `if` statement to check if the current number is even. If it is, print the number on a new line.
    *   *Hint:* An even number is perfectly divisible by 2 (i.e., the remainder when divided by 2 is 0). You can use the modulo operator (`%`) for this check.

**Example Expected Output:**

```
Numbers from 1 to 10:
1
2
3
4
5
6
7
8
9
10

Even numbers from 1 to 10:
2
4
6
8
10
```

---

**Solution Code**

```dart
void main() {
  // Task 1: Print all numbers from 1 to 10
  print("Numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    print(i); // Print the current number in the loop
  }

  // Add a blank line for separation
  print(""); // or print("\nEven numbers from 1 to 10:");

  // Task 2: Print only even numbers from 1 to 10
  print("Even numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    // Check if the number is even
    // An integer is even if the remainder when divided by 2 is 0
    if (i % 2 == 0) {
      print(i); // Print the number only if it's even
    }
  }

  // Optional: Example of printing odd numbers (demonstrates the opposite condition)
  print("\nOdd numbers from 1 to 10 (Optional Bonus):");
   for (int i = 1; i <= 10; i++) {
    // Check if the number is odd
    // An integer is odd if the remainder when divided by 2 is not 0
    if (i % 2 != 0) {
      print(i); // Print the number only if it's odd
    }
  }
}
```