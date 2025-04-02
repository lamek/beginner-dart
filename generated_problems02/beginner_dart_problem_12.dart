Okay, here is a beginner Dart problem focusing on `for` loops and `if` statements for number series manipulation.

---

**Problem Description**

**Title:** Print Even Numbers

**Goal:** Write a Dart program that uses a `for` loop to iterate through numbers from 1 to 10 (inclusive). Inside the loop, use an `if` statement to check if the current number is even. If the number is even, print it to the console.

**Requirements:**

1.  Use a `for` loop to generate numbers from 1 up to and including 10.
2.  Inside the loop, use an `if` statement to determine if the current number is even.
3.  Only print the number if it is even.
4.  Each even number should be printed on a new line.

**Hint:** A number is even if it leaves no remainder when divided by 2. You can check this using the modulo operator (`%`). For example, `number % 2 == 0` is true if `number` is even.

**Expected Output:**

```
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
  print("Printing even numbers from 1 to 10:");

  // 1. Use a for loop to iterate from 1 to 10 (inclusive).
  for (int i = 1; i <= 10; i++) {

    // 2. Inside the loop, use an if statement to check for even numbers.
    //    A number is even if its remainder when divided by 2 is 0.
    if (i % 2 == 0) {

      // 3. If the number is even, print it.
      print(i);
    }
    // No 'else' block is needed because we simply do nothing for odd numbers.
  }
}
```

---