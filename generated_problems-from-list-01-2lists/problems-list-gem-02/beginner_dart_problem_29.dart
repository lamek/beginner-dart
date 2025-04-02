Okay, here is a beginner Dart problem focusing on async/await with error handling, followed by its solution.

---

**Problem Description**

**Title:** Simulating Network Requests with Potential Errors

**Goal:** Write a Dart program that simulates fetching data from a network, where the request might succeed or fail. You need to handle both outcomes gracefully using asynchronous programming features.

**Requirements:**

1.  **Create an `async` Function:**
    *   Define an `async` function named `fetchDataWithError` that returns a `Future<String>`.
    *   Inside this function, use `await Future.delayed(Duration(seconds: 2));` to simulate a network delay of 2 seconds.
    *   After the delay, use a random mechanism (e.g., `Random().nextBool()` from `dart:math`) to decide the outcome:
        *   If the random outcome is "success" (e.g., `true`), return the string `"Data fetched successfully"`.
        *   If the random outcome is "failure" (e.g., `false`), throw an `Exception` with the message `'Network error'`.

2.  **Call the Function and Handle Outcomes:**
    *   In your `main` function (which should also be marked `async`), call `fetchDataWithError()` using `await`.
    *   Wrap the `await` call within a `try-catch` block.
    *   **In the `try` block:** If the `Future` completes successfully, print a success message including the returned data (e.g., "Success: Data fetched successfully").
    *   **In the `catch` block:** If the `Future` completes with an error (throws an exception), catch the `Exception` and print an error message including the exception's details (e.g., "Error caught: Exception: Network error").
    *   Add print statements before calling the function (e.g., "Attempting to fetch data...") and after the `try-catch` block (e.g., "Program finished.") to show the program flow.

**Example Output (Success Case):**

```
Attempting to fetch data...
Success: Data fetched successfully
Program finished.
```

**Example Output (Error Case):**

```
Attempting to fetch data...
Error caught: Exception: Network error
Program finished.
```

*(Note: Since the outcome is random, you'll need to run the program multiple times to see both possibilities.)*

---

**Solution Code**

```dart
import 'dart:async';
import 'dart:math'; // Import dart:math for Random

// 1. Create the async function simulating a network request
Future<String> fetchDataWithError() async {
  print("Simulating network request...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  // Randomly decide if the request succeeds or fails
  bool success = Random().nextBool(); // Generate a random true or false

  if (success) {
    // Return data on success
    return "Data fetched successfully";
  } else {
    // Throw an exception on failure
    throw Exception('Network error');
  }
}

// 2. Call the function and handle outcomes in main
Future<void> main() async {
  print("Attempting to fetch data...");

  try {
    // Use await to wait for the Future to complete
    String data = await fetchDataWithError();
    // This line executes only if fetchDataWithError completes successfully
    print('Success: $data');
  } catch (e) {
    // This block executes if fetchDataWithError throws an exception
    print('Error caught: $e');
  } finally {
    // This block executes regardless of success or error (optional but good practice)
    print("Data fetching attempt complete.");
  }

  print("Program finished.");
}
```

**Explanation:**

1.  **`import` statements:** We import `dart:async` for `Future` and `dart:math` for `Random`.
2.  **`fetchDataWithError` Function:**
    *   Marked `async` and returns `Future<String>`.
    *   `await Future.delayed(...)` pauses execution for 2 seconds.
    *   `Random().nextBool()` provides the random success/failure condition.
    *   Returns a `String` on success or `throw`s an `Exception` on failure.
3.  **`main` Function:**
    *   Marked `async` because it uses `await`.
    *   The `try` block attempts the potentially risky operation (`await fetchDataWithError()`).
    *   If `fetchDataWithError` returns successfully, the result is stored in `data` and the success message is printed.
    *   If `fetchDataWithError` throws an exception, execution jumps to the `catch` block.
    *   The `catch (e)` block catches any exception (`e`) thrown in the `try` block and prints an error message.
    *   The `finally` block (optional) is added to demonstrate code that runs whether an error occurred or not.
    *   The final print statement shows that the program continues after handling the async operation.