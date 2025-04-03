Okay, here is the provided problem content formatted using the template structure.

---
title: Delayed Message Printer
category: Asynchronous Programming
difficulty: Beginner
focus:
  - Future
  - async
  - await
  - Future.delayed
  - Duration
  - Random (dart:math)
  - Function Definition
  - Console Output (print)
  - Imports (dart:async, dart:math)
---

# Delayed Message Printer

## Problem Description

**Goal:** Create a Dart program that demonstrates basic asynchronous behavior using `Futures` and `async`/`await`. You will write a function that prints a message after a random delay, and then call this function multiple times to observe how asynchronous operations work.

**Tasks:**

1.  **Create an Asynchronous Function:**
    *   Define a function named `printDelayedMessage` that takes one argument: a `String` called `message`.
    *   This function should be marked as `async` and return a `Future<void>`.
    *   Inside the function:
        *   Generate a random integer representing a delay in seconds (e.g., between 1 and 4 seconds inclusive). You'll need to import `dart:math` for the `Random` class.
        *   Create a `Duration` object based on the random seconds generated.
        *   Use `await Future.delayed(...)` to pause the function's execution for the calculated duration. You'll need to import `dart:async` for `Future`.
        *   After the delay, print the `message` to the console, perhaps also including the duration it waited (e.g., `"Printed after [X] seconds: [message]"`).

2.  **Call the Function:**
    *   In your `main` function:
        *   Print a message indicating the start of the program (e.g., `"Starting asynchronous operations..."`).
        *   Call the `printDelayedMessage` function at least 3 times with different string messages (e.g., "Message A", "Message B", "Message C"). Do *not* use `await` when calling them from `main` for this part of the exercise.
        *   Print a message indicating that the `main` function has finished *calling* the asynchronous functions (e.g., `"Main function finished initiating calls."`).

## Expected Outcome

When you run the program, you should observe:
*   The "Starting..." message prints first.
*   The "Main function finished..." message prints very quickly after the "Starting..." message, likely *before* any of the delayed messages.
*   The delayed messages ("Message A", "Message B", "Message C") will print after their respective random delays.
*   Crucially, the *order* in which the delayed messages print will likely *not* match the order in which you called the function in `main`, because their delays are random.

## Hints
*   Use `Random().nextInt(max)` to get a random integer between 0 (inclusive) and `max` (exclusive). Adjust accordingly to get a range like 1-4 seconds.
*   Remember the necessary imports: `dart:async` and `dart:math`.

## Focus

This problem focuses on:

*   Understanding and using `Future` for asynchronous operations.
*   Defining `async` functions.
*   Using `await` to pause execution within an `async` function.
*   Using `Future.delayed` to introduce artificial delays.
*   Working with the `Duration` class.
*   Using `Random` from `dart:math` to generate random numbers.
*   Basic function definition and calling.
*   Printing output to the console (`print`).
*   Importing necessary libraries (`dart:async`, `dart:math`).
*   Observing non-blocking behavior when calling async functions without `await`.

## Solution

```dart
import 'dart:async';
import 'dart:math';

// 1. Create an Asynchronous Function
// This function waits for a random delay and then prints a message.
Future<void> printDelayedMessage(String message) async {
  // Generate a random delay between 1 and 4 seconds (inclusive)
  final random = Random();
  // nextInt(4) gives 0, 1, 2, or 3. Add 1 to get 1, 2, 3, or 4.
  final delaySeconds = random.nextInt(4) + 1;
  final delayDuration = Duration(seconds: delaySeconds);

  print(' -> Scheduled: "$message" (will wait ${delaySeconds}s)');

  // Wait for the specified duration
  await Future.delayed(delayDuration);

  // Print the message after the delay
  print('Printed after ${delaySeconds}s: $message');
}

// 2. Call the Function in main
void main() {
  print('Starting asynchronous operations...');

  // Call the asynchronous function multiple times without awaiting here
  // This allows them to run concurrently.
  printDelayedMessage('Message A');
  printDelayedMessage('Message B');
  printDelayedMessage('Message C');
  printDelayedMessage('Message D'); // Added one more for fun

  print('Main function finished initiating calls.');
  print('----------------------------------------');
  print('(Waiting for messages to be printed...)');

  // Note: The program will automatically wait for Futures to complete
  // before exiting in most Dart environments (like standalone Dart VM).
  // In some environments (like Flutter sometimes, or web without specific handling),
  // you might need mechanisms like Future.wait if you need to explicitly
  // know when *all* of them are done within main.
  // For this beginner exercise, observing the interleaved output is the key.
}

/*
Example Output (will vary due to random delays):

Starting asynchronous operations...
 -> Scheduled: "Message A" (will wait 3s)
 -> Scheduled: "Message B" (will wait 1s)
 -> Scheduled: "Message C" (will wait 4s)
 -> Scheduled: "Message D" (will wait 2s)
Main function finished initiating calls.
----------------------------------------
(Waiting for messages to be printed...)
Printed after 1s: Message B
Printed after 2s: Message D
Printed after 3s: Message A
Printed after 4s: Message C

*/
```