---
date: 2025-04-15
title: Problem 10 - Functions That Return Values (Calculating Area)
category: curated
difficulty: beginner
concepts: functions, return keyword, return types, parameters, int, arithmetic
---

# Problem 10: Functions That Return Values (Calculating Area)

So far, you might have seen functions that perform actions, like printing something to the console (using `void`). But what if you need a function to perform a calculation and give you the result back so you can use it later? That's where **return values** come in!

## Understanding Functions with Return Values

Instead of using `void` (which means the function returns nothing), you specify the **data type** of the value the function will send back. Inside the function, you use the `return` keyword followed by the value you want to send back.

The basic structure looks like this:

```dart
returnType functionName(parameterType parameterName) {
  // Code to calculate the result
  return calculatedValue; // This value must match the returnType
}
```

For example, a function designed to add two numbers and give back the sum might look like:

```dart
int add(int a, int b) {
  int sum = a + b;
  return sum; // Returns an integer value
}
```

You can then *call* this function and store its result in a variable:

```dart
int result = add(5, 3); // result will now hold the value 8
print(result);
```

## The Exercise

**Task:**

Write a Dart program that defines a function called `calculateRectangleArea`.

1.  This function should accept two parameters: `length` (an `int`) and `width` (an `int`).
2.  Inside the function, calculate the area of the rectangle (length multiplied by width).
3.  The function should **return** the calculated area (which will be an `int`).

After defining the function, in your `main` function:

1.  Call `calculateRectangleArea` with a length of `10` and a width of `5`.
2.  Store the **returned value** in a variable named `area`.
3.  Print a message to the console that includes the calculated area.

**Example Output:**

```
The area of the rectangle is: 50
```

## Ready to Code?

Create a new Dart file (e.g., `return_function.dart`) or use DartPad. Remember to define your function *outside* the `main` function, but call it *inside* `main`.

Copy this boilerplate code to get started:

```dart
// Define your calculateRectangleArea function here
// It should take two int parameters and return an int

void main() {
  // Call the function, store the result
  int area = calculateRectangleArea(10, 5); // Example call

  // Print the result
  print('The area of the rectangle is: $area'); // Using string interpolation
}
```
*(Hint: You'll need to replace the comment above `main` with your actual function definition!)*

## Need Some Hints?

*   Remember the syntax: `returnType functionName(param1, param2) { ... }`. What's the correct `returnType` for the area?
*   Use the `*` operator for multiplication.
*   Don't forget the `return` keyword inside your function to send the calculated value back.
*   When you call the function in `main`, make sure you assign its result to the `area` variable using `=`.

## Solution

[View the Solution](curated-solutions/prob-10-solution.md)

## Further Practice

Ready to practice returning values some more?

### More Exercises:

*   **Easy:** Write a function `squareNumber` that takes one `int` parameter and returns its square (the number multiplied by itself). Call it and print the result.
*   **Medium:** Create a function `getFullName` that takes two `String` parameters, `firstName` and `lastName`, and returns a single `String` representing the full name (e.g., "John Doe").
*   **Harder:** Write a function `isEven` that takes an `int` parameter and returns a `bool` (`true` if the number is even, `false` otherwise). Hint: Use the modulo operator (`%`).

### Explore More Problems:

Find more challenges related to functions in the [Functions category](../categories/functions.md).