---
date: 2025-04-05
title: Problem 9: Creating Your First Function
category: curated
difficulty: beginner
concepts: functions, parameters, void, function call
---

# Problem 9: Creating Your First Function

Now that you've worked with variables, operators, and control flow, let's learn how to organize code into reusable blocks called **functions**. Functions help make your code cleaner, easier to understand, and less repetitive.

## Understanding Functions

A **function** is a named block of code designed to perform a specific task. Think of it like a mini-program within your main program.

*   **Definition:** You define a function once with a name, specifying what task it should perform.
*   **Parameters:** Functions can accept inputs, called **parameters**, which allow you to pass data into the function. This makes functions flexible.
*   **Calling:** To execute the code inside a function, you "call" it by using its name followed by parentheses `()`. If the function expects parameters, you provide values (called **arguments**) inside the parentheses.
*   **`void`:** If a function performs an action (like printing) but doesn't need to return a calculated value back to where it was called, its return type is `void`.

## The Exercise

**Task:**

Write a Dart program that defines a simple function and then calls it.

1.  **Define a function** named `printGreeting` that accepts one parameter:
    *   The parameter should be of type `String` and named `name`.
2.  **Inside the function**, use the `print()` function to display a personalized greeting. The greeting should be "Hello, " followed by the value of the `name` parameter, and ending with an exclamation mark "!".
3.  **In your `main` function**, call the `printGreeting` function, passing in the string "Dart Programmer" as the argument.

**Example Output:**

```
Hello, Dart Programmer!
```

## Ready to Code?

Create a new Dart file (e.g., `simple_function.dart`) and write your solution.

Or, use DartPad. Copy in this boilerplate code. Define your `printGreeting` function (usually *outside* the `main` function) and then call it from *inside* `main`:

```dart
// Define your printGreeting function here


void main() {
  // Call your printGreeting function here
}
```

## Need Some Hints?

*   The basic syntax for defining a function is: `returnType functionName(parameterType parameterName) { // Code to execute }`. Remember to use `void` as the return type here.
*   Inside the function, you can use the `parameterName` just like a local variable.
*   To combine the greeting string and the name, you can use string concatenation (`+`) or string interpolation (`"Hello, $name!"`).
*   To call the function from `main`, use its name followed by parentheses containing the argument: `functionName(argumentValue);`.

## Solution

[View the Solution](curated-solutions/cur-problem-09-solution.md) <!-- Assuming problem 9 -->

## Further Practice

Want to practice functions more? Try these:

### More Exercises:

*   **Easy:** Create a function `printNumber` that takes one `int` parameter and prints "The number is: [number]". Call it with the number `42`.
*   **Medium:** Create a function `printUserDetails` that takes two `String` parameters, `firstName` and `city`, and prints a sentence like "[firstName] lives in [city]." Call it with your own details or sample data.
*   **Harder:** Create a function `printRepeatedMessage` that takes two parameters: a `String` message and an `int` count. The function should print the message the specified number of times (use a `for` loop inside the function). Call it with `"Learning Dart!"` and `3`.

### Explore More Problems:

You can find more problems related to functions in the [Functions category](../categories/functions.md).