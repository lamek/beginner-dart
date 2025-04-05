---
date: 2025-04-12 # Adjusted date slightly
title: Problem 7: Repeating Actions with `for` Loops
category: curated
difficulty: beginner
concepts: for loop, iteration, control flow, print
---

# Problem 7: Repeating Actions with `for` Loops

Often in programming, you need to perform the same action multiple times. Instead of writing the same code over and over again, you can use loops! This problem introduces the `for` loop, a common way to repeat code a specific number of times.

## Understanding `for` Loops

A **`for` loop** is a control flow statement that allows code to be executed repeatedly based on a condition. It's particularly useful when you know in advance how many times you want to iterate (repeat).

The basic structure of a `for` loop in Dart looks like this:

```dart
for (initializer; condition; updater) {
  // Code to be executed in each iteration
}
```

Let's break down the parts inside the parentheses `()`:

1.  **Initializer:** This part runs exactly *once* when the loop starts. It's typically used to declare and initialize a counter variable (e.g., `int i = 0`).
2.  **Condition:** This expression is evaluated *before* each potential loop iteration. If it's `true`, the code inside the loop's curly braces `{}` runs. If it's `false`, the loop stops. (e.g., `i < 5`).
3.  **Updater:** This part runs *after* the code inside the loop's braces has executed in an iteration. It's typically used to modify the counter variable (e.g., `i++`, which means increment `i` by 1).

## The Exercise

**Task:**

Write a Dart program that uses a `for` loop to print the numbers from 1 to 5, each on a new line.

**Example Output:**

```
1
2
3
4
5
```

## Ready to Code?

Create a new Dart file (e.g., `for_loop_basics.dart`) and write your solution. You can run your code using the Dart SDK.

Or, use the DartPad. Copy in this boilerplate code and try to implement the loop:

```dart
void main() {
  print("Starting the loop...");

  // Use a for loop here to print numbers 1 through 5

  print("Loop finished!");
}
```

## Need Some Hints?

*   Remember the three parts of the `for` loop setup: initializer, condition, updater.
*   You'll need a counter variable. Start it at `1`.
*   The loop should continue as long as the counter is *less than or equal to* `5`.
*   Increment the counter by `1` in each step (`i++` is shorthand for `i = i + 1`).
*   Use the `print()` function inside the loop to display the current value of the counter.

## Solution

[View the Solution](curated-solutions/cur-problem-07-solution.md)

## Further Practice

Want to get more comfortable with `for` loops? Try these variations:

### More Exercises:

*   **Easy:** Modify your code to print the numbers from 10 down to 1. (Hint: Change the initializer, condition, and updater).
*   **Medium:** Write a program using a `for` loop to print only the even numbers between 1 and 10 (inclusive). (Hint: You might need an `if` statement inside the loop).
*   **Harder:** Use a `for` loop to calculate the sum of all numbers from 1 to 10 and print only the final sum. (Hint: You'll need a variable outside the loop to keep track of the sum).

### Explore More Problems:

Find more challenges involving loops in the [Loops category](../categories/loops.md) or the [Control Flow category](../categories/control_flow.md).