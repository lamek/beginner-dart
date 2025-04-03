---
title: Simulated API Data Fetch
category: Asynchronous Programming
difficulty: Beginner
focus:
  - Future
  - async
  - await
  - Future.delayed
  - Functions
---

# Simulated API Data Fetch

## Problem Description

Understand and implement basic asynchronous data fetching in Dart using `Future`, `async`, and `await`. The goal is to simulate fetching data from a network resource, which typically involves a delay.

## Requirements

1.  **Create Asynchronous Function:** Define a function named `fetchUserData` that is marked as `async` and returns a `Future<String>`.
2.  **Simulate Network Delay:** Inside the `fetchUserData` function, use `Future.delayed()` with a `Duration` of 3 seconds to pause execution, simulating a network request time. Use `await` to wait for the delay.
3.  **Simulate Data Return:** After the delay completes, the `fetchUserData` function should return a predefined `String` (e.g., `"User Data: John Doe (Age 30)"`).
4.  **Call Asynchronous Function:** In the `main` function (which must also be marked `async`), call the `fetchUserData` function.
5.  **Await Result:** Use the `await` keyword in `main` to pause its execution until the `Future` returned by `fetchUserData` completes and retrieve the resulting `String`.
6.  **Print Output:** Print informative messages to the console *before* calling `fetchUserData` and *after* receiving the data to clearly show the program's execution flow and the pause caused by the asynchronous operation. The final fetched data should also be printed.

## Focus

This problem focuses on:

*   Understanding the concept of asynchronous operations.
*   Declaring and using `async` functions.
*   Working with the `Future` class.
*   Using `await` to pause execution and get the result of a `Future`.
*   Using `Future.delayed` to simulate time-consuming tasks.
*   Importing libraries (`dart:async`).
*   Basic function definition and calling.
*   Printing output (`print`).

## Boilerplate Code

```dart
import 'dart:async'; // Needed for Future, Duration

// 1. Create asynchronous function fetchUserData here
// Future<String> fetchUserData() async {
//   // 2. Simulate network delay
//   // 3. Return simulated data
// }

void main() async { // Make main async
  print("Program started.");

  // 4. Call asynchronous function
  print("Fetching user data...");
  // 5. Await result
  // String userData = await ... ;

  // 6. Print output
  // print(userData);
  print("Program finished.");
}
```