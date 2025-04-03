Okay, here is the Dart problem formatted according to your template:

```markdown
---
title: Handling Future Errors with try/catch
category: Asynchronous Programming
difficulty: Beginner
focus:
  - Future
  - async
  - await
  - try/catch
  - finally
  - Exception
  - Error Handling
---

# Handling Future Errors with try/catch

## Problem Description

**Goal:** Learn how to handle potential errors that might occur during asynchronous operations (represented by `Future`s) in Dart using `async`/`await` and `try`/`catch`.

This problem involves creating a function that simulates an asynchronous operation which might fail, and then using `async`/`await` with `try`/`catch` to gracefully handle both successful results and potential errors.

## Requirements

1.  **Create an Asynchronous Function with Potential Failure:**
    *   Define a function named `fetchDataFromServer` that accepts a boolean parameter `shouldSucceed`.
    *   This function should return a `Future<String>`.
    *   Inside the function, simulate a network delay of 2 seconds using `Future.delayed`.
    *   After the delay, check the value of `shouldSucceed`:
        *   If `shouldSucceed` is `true`, the `Future` should complete successfully with the value `"Data fetched successfully!"`.
        *   If `shouldSucceed` is `false`, the `Future` should complete with an error by `throw`ing an `Exception` (e.g., `throw Exception("Network error: Failed to fetch data.");`).

2.  **Create an Asynchronous Function to Handle the Result/Error:**
    *   Define an `async` function named `processData`.
    *   Inside `processData`, use a `try`/`catch` block.
    *   Inside the `try` block:
        *   Call `fetchDataFromServer`, passing `false` first (to simulate failure). Use `await` to wait for the `Future`.
        *   Store the result in a variable.
        *   Print a success message including the fetched data (e.g., "Success: [fetched data]").
    *   Inside the `catch` block:
        *   Catch the specific `Exception` (or a general `Object`).
        *   Print an error message including the error details (e.g., "Error caught: [error details]").
    *   Add an optional `finally` block that prints "Data processing attempt finished."

3.  **Call the Handler Function:**
    *   In your `main` function:
        *   Print a message indicating the start of the process for the failure case.
        *   Call `processData()`. Ensure `main` is `async` and you `await` the call.
        *   *(Optional Challenge):* Modify `processData` to accept the boolean flag. Call it twice from `main` - once simulating success (`true`) and once simulating failure (`false`).

## Focus

This problem focuses on:

*   Using `async` and `await` for managing asynchronous operations.
*   Working with the `Future` class to represent values available in the future.
*   Implementing robust error handling for asynchronous code using `try`, `catch`, and `finally` blocks.
*   Throwing `Exception` objects to signal errors in asynchronous functions.
*   Catching specific `Exception` types.
*   Simulating asynchronous delays using `Future.delayed`.
*   Making the `main` function `async` to use `await` at the top level.

## Solution

```dart
import 'dart:async';

// 1. Asynchronous function that might succeed or fail
Future<String> fetchDataFromServer(bool shouldSucceed) {
  print("Attempting to fetch data... (will succeed: $shouldSucceed)");
  // Simulate network delay
  return Future.delayed(Duration(seconds: 2), () {
    if (shouldSucceed) {
      // Simulate successful data fetch
      return "Data fetched successfully!";
    } else {
      // Simulate a network error
      throw Exception("Network error: Failed to fetch data.");
    }
  });
}

// 2. Async function to handle the Future's result or error
// (Modified to accept the flag for the optional challenge part)
Future<void> processData(bool simulateSuccess) async {
  print("\n--- Starting data processing (Simulating ${simulateSuccess ? 'Success' : 'Failure'}) ---");
  try {
    // Attempt to fetch data and wait for the result
    String result = await fetchDataFromServer(simulateSuccess);
    // This line only runs if fetchDataFromServer completes successfully
    print("Success: $result");
  } on Exception catch (e) { // Catching a specific Exception type
    // This block runs if fetchDataFromServer throws an Exception
    print("Error caught: $e");
  } catch (e) { // Catching any other potential errors (good practice)
     print("An unexpected error occurred: $e");
  } finally {
    // This block runs regardless of whether an error occurred or not
    print("Data processing attempt finished.");
    print("----------------------------------------");
  }
}

// 3. Main function to run the process
Future<void> main() async {
  print("Starting application...");

  // Simulate the failure case
  await processData(false);

  // Simulate the success case
  await processData(true);

  print("Application finished.");
}
```
```