Okay, here is a beginner Dart problem focusing on `while` loops for a countdown timer, along with its solution.

---

**Problem Description**

**Title:** Simple Countdown Timer

**Objective:** Write a Dart program that simulates a countdown timer.

**Requirements:**

1.  Declare an integer variable to hold the starting countdown value (e.g., start at 5).
2.  Use a `while` loop to count down from the starting value.
3.  Inside the loop, print the current countdown number on a new line.
4.  The loop should continue as long as the countdown number is greater than 0.
5.  Decrement the countdown number in each iteration of the loop.
6.  After the loop finishes (when the count reaches 0), print a final message like "Blast off!".

**Example Output (for a starting value of 5):**

```
5
4
3
2
1
Blast off!
```

---

**Solution Code**

```dart
void main() {
  // 1. Declare the starting countdown value
  int countdownValue = 5; // You can change this starting value

  print("Starting countdown from $countdownValue...");

  // 2. Use a while loop to count down
  // 4. The loop continues as long as countdownValue is greater than 0
  while (countdownValue > 0) {
    // 3. Print the current countdown number
    print(countdownValue);

    // 5. Decrement the countdown number
    countdownValue = countdownValue - 1; // or use countdownValue--;
  }

  // 6. Print the final message after the loop
  print("Blast off!");
}
```

---