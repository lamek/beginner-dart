Okay, here is a beginner Dart problem focusing on the `while` loop for a countdown timer, followed by its solution.

---

## Problem Description

**Dart Control Flow Challenge: Countdown Timer**

**Goal:** Write a Dart program that simulates a simple countdown from 10 down to 1 using a `while` loop.

**Requirements:**

1.  Create an integer variable, let's call it `count`, and initialize it to `10`.
2.  Use a `while` loop that continues as long as the `count` variable is greater than or equal to `1`.
3.  Inside the loop:
    *   Print the current value of `count`.
    *   Decrement (decrease) the value of `count` by 1.
4.  After the loop finishes (when `count` is no longer greater than or equal to 1), print the message "Blast off!".

**Expected Output:**

```
10
9
8
7
6
5
4
3
2
1
Blast off!
```

---

## Dart Solution

```dart
void main() {
  // 1. Initialize the counter variable
  int count = 10;

  // 2. Use a while loop to count down as long as count >= 1
  while (count >= 1) {
    // 3. Inside the loop: Print the current count
    print(count);

    // 3. Inside the loop: Decrement the count
    count = count - 1; // or use the shorthand: count--;
  }

  // 4. After the loop finishes, print the final message
  print("Blast off!");
}
```

---