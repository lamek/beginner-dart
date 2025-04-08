---
date: 2025-04-05
title: Problem 14 - Combining Decisions with Operators
category: curated
difficulty: beginner
concepts: if/else, comparison operators (>, <, ==), logical operators (&&), modulo operator (%), variables
---

# Problem 14: Combining Decisions with Operators

You've learned how to make simple decisions with `if/else` and how to compare values using operators. Now, let's combine these concepts to solve problems that require checking multiple conditions.

## Understanding Combined Checks

Often, a program needs to evaluate more than one condition at a time. For example, you might want to check if a number is *both* positive *and* even. This is where **logical operators** come in handy.

*   **`&&` (Logical AND):** Returns `true` only if *both* conditions on its left and right are `true`.
    *   Example: `age >= 18 && hasLicense == true` (checks if age is 18 or older AND hasLicense is true).
*   **`||` (Logical OR):** Returns `true` if *at least one* of the conditions on its left or right is `true`.
    *   Example: `isWeekend == true || isHoliday == true` (checks if it's a weekend OR a holiday).
*   **`!` (Logical NOT):** Reverses the boolean value of a condition.
    *   Example: `!isRaining` (checks if isRaining is `false`).

We'll also use the **modulo operator (`%`)**, which gives you the remainder of a division. It's very useful for checking if a number is even or odd.
*   `number % 2 == 0` is `true` if `number` is even.
*   `number % 2 != 0` is `true` if `number` is odd.

## The Exercise

**Task:**

Write a Dart program that does the following:

1.  Declare an integer variable named `number` and assign it a value (e.g., 10, -5, 7, 0, -8).
2.  Use `if/else if/else` statements and comparison operators (`>`, `<`, `==`) to determine if the `number` is positive, negative, or zero.
3.  Use the modulo operator (`%`) and an `if/else` statement to determine if the `number` is even or odd. (Remember, 0 is considered even).
4.  Combine these checks to print a single descriptive message about the number. Specifically, use the logical AND (`&&`) operator in one of your conditions (for example, when checking for "positive and even").

**Example Output:**

*   If `number` is `10`, the output should be: `10 is positive and even.`
*   If `number` is `7`, the output should be: `7 is positive and odd.`
*   If `number` is `-4`, the output should be: `-4 is negative and even.`
*   If `number` is `-5`, the output should be: `-5 is negative and odd.`
*   If `number` is `0`, the output should be: `0 is zero and even.`

## Ready to Code?

Create a new Dart file (e.g., `combined_checks.dart`) and write your solution. Try changing the value of `number` to test all the cases!

Or, use the DartPad. Copy in this boilerplate code and see if you can code up a solution that gives you the expected output for different number values:

```dart
void main() {
  int number = 10; // Try changing this value! (e.g., 7, -4, -5, 0)

  String description = ""; // We will build the description string

  // --- Your Code Here ---
  // 1. Check if positive, negative, or zero
  // 2. Check if even or odd
  // 3. Combine the results into the 'description' string
  //    Make sure to use the && operator in at least one check!


  // --- End Your Code ---

  print(description); // Print the final description
}
```

## Need Some Hints?

*   Think about how to structure your `if/else if/else` blocks. You might need nested `if` statements, or you could determine the parts of the message separately and then combine them.
*   How do you check if a number `n` is positive? (`n > 0`) Negative? (`n < 0`) Zero? (`n == 0`)
*   How do you check if a number `n` is even? (`n % 2 == 0`)
*   You can build the final string using concatenation (`+`) or string interpolation (`$variableName`).
*   Consider checking for "positive and even" explicitly using `if (number > 0 && number % 2 == 0)`. How would you handle the other cases?

## Solution

[View the Solution](curated-solutions/prob-14-solution.md)

## Further Practice

Want to practice combining conditions more? Try these:

### More Exercises:

*   **Easy:** Write a program that checks if a `temperature` (integer) is within a comfortable range (e.g., greater than 18 AND less than 25). Print whether it's comfortable or not.
*   **Medium:** Write a program that takes a `score` (integer 0-100) and assigns a letter grade (A: 90+, B: 80-89, C: 70-79, D: 60-69, F: < 60) using `if/else if/else`.
*   **Harder:** Write a program to check if a given `year` (integer) is a leap year. A leap year occurs:
    *   if the year is divisible by 4,
    *   *except* for end-of-century years, which must be divisible by 400.
    *   (e.g., 2000 and 2024 are leap years; 1900 and 2021 are not). This requires careful use of `&&`, `||`, and `!`/`!=`.

### Explore More Problems:

Find more challenges involving decision-making and operators in the [Control Flow](../categories/control-flow.md) and [Operators](../categories/operators.md) categories.