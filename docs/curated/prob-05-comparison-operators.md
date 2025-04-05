---
date: 2025-04-05
title: Problem 5 - Comparing Values
category: curated
difficulty: beginner
concepts: comparison operators, boolean values, operators
---

# Problem 5: Comparing Values

Now that you know how to store data in variables, let's learn how to compare those values. Comparison operators are fundamental tools for making decisions in your programs.

## Understanding Comparison Operators

**Comparison operators** take two values and compare them. The result of a comparison is always a **boolean** value: either `true` or `false`. These boolean results are essential for controlling the flow of your program (which you'll see more of in the next problem!).

Dart provides the following standard comparison operators:

*   **`==`** : **Equal to**. Returns `true` if the values on both sides are equal. (Note: This is *two* equals signs, not one!)
*   **`!=`** : **Not equal to**. Returns `true` if the values on both sides are *not* equal.
*   **`>`** : **Greater than**. Returns `true` if the value on the left is greater than the value on the right.
*   **`<`** : **Less than**. Returns `true` if the value on the left is less than the value on the right.
*   **`>=`** : **Greater than or equal to**. Returns `true` if the value on the left is greater than or equal to the value on the right.
*   **`<=`** : **Less than or equal to**. Returns `true` if the value on the left is less than or equal to the value on the right.

These operators work with numbers (`int`, `double`), strings, and other types, though the meaning of "greater" or "less" can vary depending on the type. For now, we'll focus on numbers.

## The Exercise

**Task:**

Write a Dart program that performs several comparisons and prints the results (`true` or `false`).

1.  Declare two integer variables: `scoreA` with a value of `85` and `scoreB` with a value of `92`.
2.  Declare two more integer variables: `apples` with a value of `5` and `oranges` also with a value of `5`.
3.  Perform the following comparisons and print the result of each one on a new line. Include a descriptive label for each print statement.
    *   Is `scoreA` greater than `scoreB`?
    *   Is `scoreA` less than or equal to `scoreB`?
    *   Are `apples` equal to `oranges`?
    *   Are `apples` not equal to `scoreA`?

**Example Output:**

```
Is scoreA > scoreB? false
Is scoreA <= scoreB? true
Are apples == oranges? true
Are apples != scoreA? true
```

## Ready to Code?

Create a new Dart file (e.g., `comparison_operators.dart`) and write your solution. You can run your code using the Dart SDK.

Or, use the DartPad. Copy in this boilerplate code and see if you can code up a solution that gives you the expected output:

```dart
void main() {
  // Declare your variables here
  int scoreA = 85;
  int scoreB = 92;
  int apples = 5;
  int oranges = 5;

  // Perform comparisons and print the results
  print("Is scoreA > scoreB? ${scoreA > scoreB}"); // Example of how to print
  // Add the rest of your print statements here
}
```
*(Note: The boilerplate includes the variable declarations and one example print statement using string interpolation `${...}` for cleaner output)*

## Need Some Hints?

*   Remember the `print()` function. You can print strings and variable values.
*   String interpolation `print("Text ${expression}");` is a handy way to include the result of an expression (like a comparison) directly inside a string. The expression inside `${}` is evaluated, and its result is converted to a string.
*   Alternatively, you can concatenate: `print("Is scoreA > scoreB? " + (scoreA > scoreB).toString());` but interpolation is often preferred.
*   Each comparison operator (`>`, `<=`, `==`, `!=`) directly produces a `true` or `false` value.

## Solution

[View the Solution](curated-solutions/prob-05-solution.md)

## Further Practice

Want to get more comfortable with comparisons? Try these:

### More Exercises:

*   **Easy:** Declare two `String` variables with different text values (e.g., your first name and last name). Compare them using `==` and `!=` and print the results. Now, try comparing `"Apple"` and `"apple"`. Are they equal?
*   **Medium:** Declare a variable `userAge` and set it to an integer value. Write comparisons to check if the age is:
    *   Greater than or equal to 18 (legal adult age).
    *   Exactly equal to 21.
    *   Less than 13 (child age).
    Print the results (`true`/`false`) for each check.
*   **Harder:** Declare two `double` variables representing prices (e.g., `price1 = 10.50`, `price2 = 9.99`). Compare them using all six comparison operators and print the results.

### Explore More Problems:

You can find more problems related to operators and making decisions in the [Operators category](../categories/operators.md).