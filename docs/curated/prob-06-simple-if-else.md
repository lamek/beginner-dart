---
date: 2025-04-5
title: Problem 6: Making Simple Decisions with if-else
category: curated
difficulty: beginner
concepts: if-else, conditional statements, comparison operators, boolean expressions
---

# Problem 6: Making Simple Decisions with if-else

Sometimes in programming, you need your code to make decisions and execute different actions based on whether a certain condition is true or false. This is where **conditional statements** come in, and the most fundamental one in Dart is the `if-else` statement.

## Understanding Conditional Statements (`if-else`)

An `if` statement checks a **condition** (something that evaluates to either `true` or `false`).

*   If the condition is `true`, the block of code immediately following the `if` statement is executed.
*   You can optionally add an `else` block. If the `if` condition is `false`, the code inside the `else` block is executed instead.

The basic structure looks like this:

```dart
if (condition) {
  // Code to run if the condition is true
} else {
  // Code to run if the condition is false
}
```

The `condition` often involves using the **comparison operators** you learned about earlier (like `>`, `<`, `==`, `!=`, `>=`, `<=`).

## The Exercise

**Task:**

Write a Dart program that declares an integer variable named `score` and initializes it with a value (e.g., 75). Then, use an `if-else` statement to check if the `score` is greater than or equal to 60.

*   If the `score` is 60 or higher, print the message: "Congratulations! You passed."
*   If the `score` is less than 60, print the message: "Keep trying! You'll get it next time."

Try changing the initial value of `score` to test both outcomes.

**Example Output (if `score` is 75):**

```
Congratulations! You passed.
```

**Example Output (if `score` is 45):**

```
Keep trying! You'll get it next time.
```

## Ready to Code?

Create a new Dart file (e.g., `decision_making.dart`) and write your solution. You can run your code using the Dart SDK.

Or, use DartPad. Copy in this boilerplate code and modify it to solve the problem:

```dart
void main() {
  int score = 75; // Try changing this value!

  // Write your if-else statement here to check the score

  // Print the appropriate message based on the condition
}
```

## Need Some Hints?

*   Remember the structure: `if (condition) { ... } else { ... }`.
*   What comparison operator checks if a value is "greater than or equal to" another? (`>=`)
*   Make sure your `print()` statements are inside the correct curly braces (`{ }`).

## Solution

[View the Solution](curated-solutions/cur-problem-06-solution.md)

## Further Practice

Want to practice more decision-making? Try these:

### More Exercises:

*   **Easy:** Declare a variable `isRaining` (boolean type, `true` or `false`). Write an `if-else` statement to print "Bring an umbrella!" if it's raining, and "Enjoy the sunshine!" otherwise.
*   **Medium:** Declare an integer variable `age`. Use `if-else if-else` (a chain of conditions) to print whether the age corresponds to a "Child" (under 13), "Teenager" (13-19), or "Adult" (20+).
*   **Harder:** Write a program that checks if a number is positive, negative, or zero using nested `if-else` statements or an `if-else if-else` chain.

### Explore More Problems:

Find more problems involving decision-making in the [Control Flow category](../categories/control-flow.md).