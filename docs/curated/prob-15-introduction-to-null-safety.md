---
date: 2025-04-05
title: Problem 15 - Introduction to Null Safety
category: curated
difficulty: beginner
concepts: null safety, nullable types, null-aware operator (?)
---

# Problem 15: Introduction to Null Safety

Modern programming languages like Dart put a strong emphasis on preventing errors caused by unexpectedly missing values. This concept is called **Null Safety**.

## Understanding Null Safety

In programming, `null` typically represents the **absence of a value**. Before null safety, trying to use a variable that was `null` often led to runtime crashes (like the infamous "NullPointerException").

Dart's null safety system helps prevent these errors by default. Variables **cannot** hold the value `null` unless you explicitly tell Dart they are allowed to.

*   **Non-nullable type (e.g., `String`, `int`):** Cannot be assigned `null`. Must always have a value.
*   **Nullable type (e.g., `String?`, `int?`):** Can hold a value *or* `null`. The `?` after the type indicates it's nullable.

When you have a nullable variable, Dart requires you to safely handle the possibility that it might be `null` before you can use its properties or methods. One way to do this is with the **null-aware access operator (`?.`)**.

The `?.` operator works like this:
`variable?.propertyOrMethod`
If `variable` is *not* `null`, it accesses the `propertyOrMethod` just like the regular `.` operator.
If `variable` *is* `null`, the expression stops evaluating and returns `null` instead of throwing an error.

## The Exercise

**Task:**

Write a Dart program that demonstrates basic null safety:

1.  Declare a **nullable** String variable named `middleName` and initialize it with a value, for example, `"Fitzgerald"`.
2.  Declare a **non-nullable** String variable named `firstName` and initialize it with a value, like `"Scott"`.
3.  Print the `firstName` and `middleName`.
4.  Reassign `middleName` to `null`.
5.  Try to print the `length` of `middleName` using the null-aware operator (`?.`). Observe what happens when `middleName` is `null`.
6.  Print a message indicating whether a middle name exists, based on the result from the previous step.

**Example Output:**

```
First Name: Scott
Middle Name: Fitzgerald
Middle name length: 10
Middle Name is now null.
Middle name length: null
No middle name provided.
```
*(Note: The exact output text can vary slightly, but should show the length when not null, and null when it is null).*


## Ready to Code?

Create a new Dart file (e.g., `null_safety_intro.dart`) and write your solution.

Or, use DartPad. Copy in this boilerplate code:

```dart
void main() {
  // 1. Declare nullable middleName and non-nullable firstName
  String? middleName = "Fitzgerald";
  String firstName = "Scott";

  // 2. Print initial values
  print('First Name: $firstName');
  print('Middle Name: $middleName');

  // 3. Safely access length of middleName (when it's not null)
  int? middleNameLength = middleName?.length;
  print('Middle name length: $middleNameLength');


  // 4. Reassign middleName to null
  middleName = null;
  print('Middle Name is now null.');


  // 5. Use null-aware operator again and print the length (which will be null)
  // Add your code here to get the length safely
  int? currentLength = // Your code here

  print('Middle name length: $currentLength');

  // 6. Print a message based on whether currentLength is null
  // Add your code here (Hint: use an if/else check)

}
```

## Need Some Hints?

*   Use `String?` to declare a nullable string variable.
*   Use the `?.` operator like this: `variableName?.property`.
*   The result of `variableName?.property` will be `null` if `variableName` is `null`.
*   You can check if a variable is `null` using `if (variableName == null)`.

## Solution

[View the Solution](curated-solutions/prob-15-solution.md)

## Further Practice

Want to explore null safety more?

### More Exercises:

*   **Easy:** Create a nullable integer (`int? age`). Assign it a value, then assign it `null`. Try printing it in both cases.
*   **Medium:** Introduce the **null-coalescing operator (`??`)**. Modify the final `print` statement in the exercise to print `"No middle name"` directly if `middleName?.length` results in `null`. (e.g., `print(middleName?.length ?? "No middle name");`)
*   **Harder:** Write a function that accepts a `String?` and returns its uppercase version if it's not null, or returns the string `"N/A"` if it is null. Use `?.` and `??`.

### Explore More Problems:

You can find more problems related to null safety in the [Null Safety category](../categories/null-safety.md).