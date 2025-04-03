```markdown
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

## Solution

```dart
import 'dart:async'; // Import the async library for Future and Duration

// 1. Create an asynchronous function that returns a Future<String>
Future<String> fetchUserData() async {
  // Simulate some processing before the actual delay if needed
  print("Inside fetchUserData: Simulating network request...");

  // 2. Simulate a network delay of 3 seconds using await
  await Future.delayed(Duration(seconds: 3));

  // Simulate receiving data after delay
  print("Inside fetchUserData: Data fetched!");
  // 3. Return the simulated data after the delay
  return "User Data: John Doe (Age 30)";
}

// 4. Use async on main to allow using await inside it
void main() async {
  print("Program started.");
  print("Main: Calling fetchUserData...");

  // 5. Call the async function and wait for its result using await
  final String userData = await fetchUserData();

  // 6. Print the result after the Future completes
  print("Main: Received data:");
  print(userData);
  print("Program finished.");
}
```

## Explanation

1.  **`import 'dart:async';`**: This line imports necessary classes like `Future` and `Duration` from Dart's asynchronous programming library.
2.  **`Future<String> fetchUserData() async`**: This declares `fetchUserData` as an asynchronous function (using the `async` keyword). It signals that the function performs asynchronous operations and implicitly returns a `Future`. The `<String>` part specifies that the `Future`, when it eventually completes, will yield a `String` value.
3.  **`await Future.delayed(Duration(seconds: 3))`**: Inside `fetchUserData`, `Future.delayed()` creates a `Future` that completes after the specified `Duration`. The `await` keyword pauses the execution *of the `fetchUserData` function* until this `Future` completes (i.e., after 3 seconds). This simulates waiting for a response from a network or other time-consuming operation without blocking the main program thread.
4.  **`return "User Data: John Doe (Age 30)";`**: Once the `await Future.delayed` completes, execution resumes. This line returns the string value. Because `fetchUserData` is an `async` function, this return value is automatically wrapped in a `Future<String>` that is marked as completed successfully with this string value.
5.  **`void main() async`**: The `main` function is marked `async` because we need to use the `await` keyword inside it to wait for the result of `fetchUserData`.
6.  **`final String userData = await fetchUserData();`**: This is the core of the interaction in `main`.
    *   `fetchUserData()` is called. It immediately returns an *uncompleted* `Future<String>` because it contains an `await` (`Future.delayed`).
    *   The `await` keyword before the call pauses the execution *of the `main` function* at this line. It waits for the `Future` returned by `fetchUserData` to complete.
    *   While `main` is paused here, other code (like event handlers or timers if they existed) could potentially run – this is the non-blocking nature of async/await.
    *   After the 3-second delay inside `fetchUserData` finishes and `fetchUserData` returns the string (completing its `Future`), the `await` in `main` receives the completed value (`"User Data: John Doe (Age 30)"`).
    *   This value is then assigned to the `userData` variable.
7.  **`print(...)` statements**: The print statements are placed strategically to show the order of execution. You'll notice "Main: Calling fetchUserData..." prints, then the "Inside fetchUserData..." messages print, then there's a 3-second pause, then "Inside fetchUserData: Data fetched!" prints, and finally, execution returns to `main`, "Main: Received data:", the actual data, and "Program finished." print. This demonstrates how `await` pauses execution *within* the current `async` function.
```