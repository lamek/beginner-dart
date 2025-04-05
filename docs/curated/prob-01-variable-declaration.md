---
date: 2025-04-05
title: Problem 1: Declaring Your First Variables
category: curated
difficulty: beginner
concepts: variables, data types (String, int, var)
---

# Problem 1: Declaring Your First Variables

Welcome to your first Dart programming challenge! In this problem, you'll learn the fundamental concept of declaring variables to store different kinds of information.

## Understanding Variables

In programming, a **variable** is like a named container that holds a value. You can think of it as a label attached to a piece of data. In Dart, you give your variables names so you can refer to them later in your code. You also often specify the **data type** of the value the variable will hold, although Dart can sometimes figure this out for you.

Dart has several built-in data types. For this problem, we'll focus on:

*   **`String`**: Used for sequences of characters, essentially text (e.g., "Hello", "Dart is fun!"). Text values are enclosed in single (`'`) or double (`"`) quotes.
*   **`int`**: Used for whole numbers (integers), both positive and negative (e.g., 10, -5, 0, 2024).
*   **`var`**: A keyword that lets Dart **infer** the data type based on the initial value you assign to the variable. If you assign `"Hello"` to a `var` variable, Dart understands it's a `String`. If you assign `100`, Dart understands it's an `int`.

## The Exercise

**Task:**

Write a Dart program that declares three variables:

1.  A variable explicitly typed as `String`, named `greeting`, that stores the text value `"Hello, Dart!"`.
2.  A variable explicitly typed as `int`, named `year`, that stores the current year (e.g., 2024 or 2025) as a whole number.
3.  A variable declared using `var`, named `message`, where the data type is automatically inferred by Dart. Assign it the text value `"Learning Dart in: "`.

After declaring these variables, your program should print the following output to the console:

1.  The value of the `message` variable followed immediately by the value of the `year` variable, all on the same line.
2.  The value of the `greeting` variable on a new, separate line.

**Example Output (assuming `year` is 2025):**

```
Learning Dart in: 2025
Hello, Dart!
```

## Ready to Code?

Create a new Dart file (e.g., `cur_problem_01.dart` or `variable_declaration.dart`) and write your solution. You can run your code using the Dart SDK (`dart your_file_name.dart`) or an online editor like DartPad.

Use this boilerplate code to get started:

```dart
void main() {
  // --- Declare your variables below this line ---

  // --- Print the output below this line ---

}
```

## Need Some Hints?

*   Remember the `print()` function is used to display output in the console.
*   To declare a variable with an explicit type: `dataType variableName = value;` (e.g., `String myString = "text";`).
*   To declare a variable using type inference: `var variableName = value;` (e.g., `var myNumber = 10;`).
*   You can print multiple things on one line. One way is to use string interpolation: `print("$variable1$variable2");` or `print("${variable1}${variable2}");`. Another way is to concatenate strings using the `+` operator, but be careful - you can only concatenate strings with other strings. You might need to convert the `int` year to a `String` first using `.toString()` if you use `+`.

## Solution

[View the Solution](docs/curated/curated-solutions/prob-01-solution.md)

## Further Practice

Want to solidify your understanding of variables? Try these exercises:

### More Exercises:

*   **Easy:** Declare variables to store your first name (String), your age (int), and whether you enjoy programming (bool - true/false). Print a sentence combining these, like "My name is [Name], I am [Age] years old, and my enjoyment of programming is [true/false]."
*   **Medium:** Declare two `int` variables, `a` and `b`, with different values. Declare a third `var` variable `sum` and assign it the sum of `a` and `b`. Print the result in the format "The sum of [a] and [b] is [sum]."
*   **Harder:** Declare variables for a product name (String), its price (double - use `double` type for numbers with decimals), and quantity (int). Calculate the total cost (`price * quantity`). Print out the product name and the total cost.

### Explore More Problems:

You can find more problems related to variables and data types in the [Variables and Data Types category](categories/variables.md).