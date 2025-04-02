Okay, here is a beginner Dart problem focusing on Futures and error handling with `.then()` and `.catchError()`.

---

**Problem Description**

**Title:** Simulate Risky Data Fetch

**Goal:** Write a Dart program that simulates fetching data from a source that might occasionally fail. You need to handle both the successful retrieval of data and potential errors using Future chaining (`.then()` and `.catchError()`).

**Requirements:**

1.  **Create a Function:** Define a function named `fetchData(bool causeError)` that returns a `Future<String>`.
2.  **Simulate Delay:** Inside the function, use `Future.delayed` to simulate a network request taking 2 seconds.
3.  **Simulate Success/Error:**
    *   If the `causeError` parameter passed to `fetchData` is `true`, the Future should complete with an error after the delay. Use `throw Exception('Failed to fetch data: Network timeout!');` to simulate this.
    *   If `causeError` is `false`, the Future should complete successfully after the delay with the string value `'Data fetched successfully!'`.
4.  **Handle the Future:** In your `main` function:
    *   Call `fetchData(false)` (the success case). Chain a `.then()` block to print the successful data string when it arrives. Chain a `.catchError()` block to print an error message (though it shouldn't be triggered in this specific call).
    *   Call `fetchData(true)` (the error case). Chain a `.then()` block (which shouldn't execute its callback) and a `.catchError()` block. The `.catchError()` block should print the error object it receives.
5.  **Add Print Statements:** Include print statements at the beginning and end of `main`, and before initiating each `fetchData` call, to observe the asynchronous execution flow.

---

**Dart Solution Code**

```dart
import 'dart:async';

// 1. Function that simulates fetching data, potentially failing
Future<String> fetchData(bool causeError) {
  print("Attempting to fetch data... (Error simulation: $causeError)");

  // 2. Simulate delay
  return Future.delayed(Duration(seconds: 2), () {
    // 3. Simulate Success/Error
    if (causeError) {
      // Simulate an error case
      throw Exception('Failed to fetch data: Network timeout!');
    } else {
      // Simulate a success case
      return 'Data fetched successfully!';
    }
  });
}

void main() {
  print("--- Program Start ---");

  // 4. Handle the Future - Success Case
  print("\nInitiating fetch (expecting success)...");
  fetchData(false)
      .then((data) {
        // This runs if the Future completes successfully
        print("Success Handler: Received data -> '$data'");
      })
      .catchError((error) {
        // This runs if the Future completes with an error
        print("Error Handler (Success Case - Should NOT execute): Caught error -> $error");
      });

  // 4. Handle the Future - Error Case
  print("\nInitiating fetch (expecting failure)...");
  fetchData(true)
      .then((data) {
        // This runs if the Future completes successfully (Should NOT execute in this case)
        print("Success Handler (Error Case - Should NOT execute): Received data -> '$data'");
      })
      .catchError((error) {
        // This runs if the Future completes with an error
        print("Error Handler: Caught error -> $error");
      });

  print("\n--- Main function finished, but Futures might still be running ---");
  // Note: The program might exit before the Futures complete if run directly,
  // depending on the environment. In a typical app, the event loop would keep running.
}
```

**Explanation:**

1.  **`fetchData` Function:** Returns a `Future<String>` and simulates a 2-second delay. Based on the `causeError` flag, it either `return`s a success string or `throw`s an `Exception`. Throwing an exception within the `Future.delayed` callback causes the Future to complete with an error.
2.  **`main` Function:**
    *   Starts with print statements to show the execution order.
    *   The first call `fetchData(false)` is expected to succeed. The `.then()` callback receives the success value (`'Data fetched successfully!'`) and prints it. The `.catchError()` is present but its callback isn't executed.
    *   The second call `fetchData(true)` is expected to fail. The `.then()` callback is skipped. The `.catchError()` callback receives the `Exception` object thrown by `fetchData` and prints it.
    *   The final print statement in `main` executes *before* the delayed operations inside the Futures complete, demonstrating the non-blocking nature of asynchronous code. The actual "Success Handler" and "Error Handler" prints will appear later in the console output after their respective 2-second delays.