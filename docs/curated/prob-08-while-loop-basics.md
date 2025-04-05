---
date: 2025-04-05
title: Problem 8 - While Loop Basics - Countdown!
category: curated
difficulty: beginner
concepts: while loop, loops, control flow, boolean condition, iteration
---

# Problem 8: While Loop Basics - Countdown!

Now let's explore another way to repeat code: the `while` loop. Unlike a `for` loop which often runs a fixed number of times, a `while` loop keeps running *as long as* a specific condition remains true.

## Understanding `while` Loops

A `while` loop checks its condition *before* each potential iteration (run). If the condition is true, the code block inside the loop executes. If the condition is false, the loop stops, and the program continues with the code after the loop.

The basic structure looks like this:

```dart
while (conditionIsTrue) {
  // Code to repeat as long as conditionIsTrue is true
  // IMPORTANT: Something inside the loop usually needs to change
  // so the condition eventually becomes false, otherwise you get an infinite loop!
}
```

Think of it like saying: "While I'm still hungry, I'll keep eating." You check if you're hungry *before* taking another bite.

## The Exercise

**Task:**

Write a Dart program that simulates a simple countdown from 5 down to 1 using a `while` loop.

1.  Create an integer variable, let's call it `countdown`, and initialize it to `5`.
2.  Use a `while` loop that continues as long as `countdown` is greater than `0`.
3.  Inside the loop:
    *   Print the current value of `countdown`.
    *   Decrement `countdown` by 1 (so it gets closer to 0).
4.  After the loop finishes, print the message "Blast off!".

**Example Output:**

```
5
4
3
2
1
Blast off!
```

## Ready to Code?

Create a new Dart file (e.g., `while_loop_countdown.dart`) and write your solution. You can run your code using the Dart SDK.

Or, use DartPad. Copy in this boilerplate code and implement the countdown logic:

```dart
void main() {
  // Initialize your countdown variable here

  // Start your while loop here

  // Print "Blast off!" after the loop
}
```

## Need Some Hints?

*   You'll need a variable to keep track of the current number in the countdown. Initialize it *before* the loop starts.
*   The condition for the `while` loop should check if the countdown variable is still positive (greater than 0).
*   Inside the loop, don't forget to decrease the value of your countdown variable. What happens if you forget this step? (Hint: Infinite loop!)
*   Use the `print()` function both inside the loop (for the numbers) and after the loop (for "Blast off!").
*   The decrement operator `--` is a shortcut for subtracting 1 (e.g., `countdown--` is the same as `countdown = countdown - 1`).

## Solution

[View the Solution](curated-solutions/prob-08-solution.md)

## Further Practice

Want to get more comfortable with `while` loops? Try these:

### More Exercises:

*   **Easy:** Modify the program to count *up* from 1 to 5 using a `while` loop.
*   **Medium:** Write a program using a `while` loop that starts with a number `n = 1` and keeps doubling it (`n = n * 2`) *while* `n` is less than 100. Print each value of `n` inside the loop.
*   **Harder:** Use a `while` loop to find the smallest integer whose factorial (1 * 2 * 3 * ... * n) is greater than 1000. You'll need variables to keep track of the current number, the running factorial product, and you'll loop while the product is less than or equal to 1000. Print the number and its factorial.

### Explore More Problems:

You can find more problems related to loops in the [Control Flow category](../categories/control_flow.md).