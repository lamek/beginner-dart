---
title: Simple Boolean Logic Quiz
category: Variables and Data Types
difficulty: Beginner
focus:
  - bool
  - Logical Operators (&&, ||, !)
  - Variable Declaration
  - Output/Printing
---

# Simple Boolean Logic Quiz

## Problem Description

Practice using boolean variables and logical operators (`&&`, `||`, `!`) in Dart.

Imagine you have information about the current situation represented by boolean variables:
*   `isDoorOpen`: Represents if a door is open (`true`) or closed (`false`).
*   `isLightOn`: Represents if a light is on (`true`) or off (`false`).
*   `isSafe`: Represents if the general situation is considered safe (`true`) or not (`false`).

Write a Dart program to declare these variables and evaluate several logical conditions based on them.

## Requirements

1.  **Declare Variables:**
    *   Declare a boolean variable `isDoorOpen` and initialize it to `false`.
    *   Declare a boolean variable `isLightOn` and initialize it to `true`.
    *   Declare a boolean variable `isSafe` and initialize it to `true`.

2.  **Evaluate Conditions:** Create new boolean variables by evaluating the following logical expressions:
    *   `canEnter`: Should be `true` only if `isDoorOpen` is true *and* `isSafe` is true.
    *   `roomIsLitOrSafe`: Should be `true` if `isLightOn` is true *or* `isSafe` is true.
    *   `isDoorClosed`: Should be `true` if `isDoorOpen` is false (i.e., the opposite of `isDoorOpen`).
    *   `isSecure`: Should be `true` if the door is closed (`!isDoorOpen`) *and* the light is off (`!isLightOn`) *and* the situation is safe (`isSafe`).

3.  **Print Results:**
    *   Print the initial values of `isDoorOpen`, `isLightOn`, and `isSafe` with descriptive labels.
    *   Print the calculated values of `canEnter`, `roomIsLitOrSafe`, `isDoorClosed`, and `isSecure` with descriptive labels explaining the condition being checked.

## Focus

This problem focuses on:

*   Declaring and initializing variables of type `bool`.
*   Using logical AND (`&&`), logical OR (`||`), and logical NOT (`!`) operators.
*   Constructing boolean expressions.
*   Printing boolean values and descriptive text to the console using `print`.

## Boilerplate Code

```dart
void main() {
  // 1. Declare Variables

  // 2. Evaluate Conditions

  // 3. Print Results
}
```
---