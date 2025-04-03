---
title: Simulated File Download
category: Asynchronous Programming
difficulty: Beginner
focus:
  - Future
  - async
  - await
  - Future.delayed
  - Functions
  - String
  - Duration
  - void
  - print (Input/Output)
---

# Simulated File Download

## Problem Description

Write a Dart program that simulates downloading a file over a network. Since actual network requests are complex, you'll simulate the time delay using `Future.delayed`.

## Requirements

1.  **Create a Function:** Define an asynchronous function named `downloadFile` that accepts one argument: a `String` representing the `fileName`. This function should return a `Future<void>` because it won't return a specific value upon completion, but the operation itself is asynchronous.
2.  **Simulate Delay:** Inside `downloadFile`, print a message indicating that the download for the given `fileName` has started (e.g., "Starting download for report.pdf..."). Then, use `await Future.delayed()` to pause execution for `3` seconds, simulating the time it takes to download.
3.  **Completion Message:** After the delay, print a message indicating that the download for the specific `fileName` is complete (e.g., "Download complete for report.pdf!").
4.  **Main Function:**
    *   Make your `main` function `async`.
    *   Call the `downloadFile` function, passing a sample filename (e.g., "important_data.csv").
    *   Use `await` when calling `downloadFile` to ensure the `main` function waits for the simulated download to finish before potentially proceeding with other tasks (or exiting).
    *   Add a final print statement in `main` *after* the `await` call (e.g., "Download process finished.") to show that the program waited.

## Focus

This problem focuses on:

*   Understanding and using `Future` for asynchronous operations.
*   Defining `async` functions.
*   Using the `await` keyword to pause execution within an `async` function.
*   Using `Future.delayed` with a `Duration` to simulate time-consuming tasks.
*   Defining functions with parameters (`String`) and return types (`Future<void>`).
*   Basic console output using `print`.
*   Making the `main` function asynchronous.

## Boilerplate Code

```dart
import 'dart:async'; // Import needed for Future and Duration

// 1. Create an asynchronous function 'downloadFile'
//    - Accepts String fileName
//    - Returns Future<void>
//    - Mark it 'async'
Future<void> downloadFile(String fileName) async {
  // 2. Simulate Delay
  //    - Print start message (using fileName)
  //    - Use await Future.delayed with Duration(seconds: 3)

  // 3. Completion Message
  //    - Print completion message (using fileName)
}

// 4. Main Function
//    - Mark it 'async'
void main() async {
  // Define a sample filename
  String myFile = 'important_data.csv';

  // Call downloadFile with the sample filename, using 'await'
  // ... your code here ...

  // Print final message after the await
  // ... your code here ...
}
```

## Example Output

```
Starting download for important_data.csv...
// (Pause for 3 seconds)
Download complete for important_data.csv!
Download process finished.
```