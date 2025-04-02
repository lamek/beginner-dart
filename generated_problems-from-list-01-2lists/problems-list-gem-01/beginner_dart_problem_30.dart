Okay, here is a beginner-level Dart problem focusing on async/await with error handling, followed by its solution.

---

**Problem Description: Dart Async/Await - Handling Potential Errors**

**Goal:** Learn how to handle potential errors that might occur during an asynchronous operation using `try...catch` with `async` and `await`.

**Scenario:** You have a function `fetchUserData()` that simulates fetching data from a network. This operation takes some time and might occasionally fail (e.g., due to a network issue).

**Tasks:**

1.  **Implement `fetchUserData()`:**
    *   The function should return a `Future<String>`.
    *   Inside the function, use `Future.delayed` to simulate a network delay (e.g., 2 seconds).
    *   After the delay, use `Random().nextBool()` (you'll need to import `dart:math`) to decide whether the operation succeeds or fails.
    *   If it succeeds (e.g., `random.nextBool()` is true), return a success message like `"User data loaded successfully!"`.
    *   If it fails (e.g., `random.nextBool()` is false), `throw` an `Exception` with a message like `"Failed to fetch user data: Network error"`.

2.  **Implement `main()`:**
    *   Mark `main` as `async`.
    *   Print a message indicating that data fetching is starting (e.g., `"Fetching user data..."`).
    *   Use a `try...catch` block to call `fetchUserData()`.
    *   Inside the `try` block:
        *   `await` the result of `fetchUserData()`.
        *   If successful, print the received data prefixed with "Success: ".
    *   Inside the `catch` block:
        *   Catch the `Exception` (you can use `catch (e)`).
        *   Print an error message prefixed with "Error caught: ", including the error object `e`.
    *   After the `try...catch` block, print a message indicating the program has finished (e.g., `"Program finished."`).

**Example Output (Success):**

```
Fetching user data...
Success: User data loaded successfully!
Program finished.
```

**Example Output (Failure):**

```
Fetching user data...
Error caught: Exception: Failed to fetch user data: Network error
Program finished.
```

*(Note: Due to the random nature, you might need to run the code multiple times to see both outputs.)*

---

**Solution Code:**

```dart
import 'dart:async';
import 'dart:math'; // Import dart:math for Random

// Function that simulates fetching data, potentially failing
Future<String> fetchUserData() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  // Simulate potential failure using a random check
  final random = Random();
  bool success = random.nextBool(); // 50% chance of success

  if (success) {
    // Operation succeeded
    return 'User data loaded successfully!';
  } else {
    // Operation failed, throw an error
    throw Exception('Failed to fetch user data: Network error');
  }
}

// Main function to call fetchUserData and handle potential errors
Future<void> main() async {
  print('Fetching user data...');

  try {
    // Attempt to fetch data and wait for the result
    final userData = await fetchUserData();
    // This line only executes if fetchUserData completes successfully
    print('Success: $userData');
  } catch (e) {
    // This block executes if fetchUserData throws an exception
    print('Error caught: $e');
  } finally {
    // This block executes regardless of success or failure (optional)
    print('Data fetching attempt complete.'); 
  }

  print('Program finished.');
}
```

**Explanation:**

1.  **`fetchUserData()`:**
    *   Marked `async` so we can use `await` inside it.
    *   Returns `Future<String>` as it will eventually produce a String or an error.
    *   `Future.delayed` pauses execution for 2 seconds.
    *   `Random().nextBool()` randomly returns `true` or `false`.
    *   If `true`, a success string is returned (implicitly wrapped in a `Future`).
    *   If `false`, an `Exception` is thrown. When an `async` function throws, the `Future` it returns completes with an error.
2.  **`main()`:**
    *   Marked `async` to allow `await`. `Future<void>` indicates it performs async operations but doesn't return a meaningful value itself.
    *   The `await fetchUserData()` call pauses `main` until the `Future` returned by `fetchUserData` completes.
    *   **`try` block:** If the `Future` completes successfully, `await` returns the value (`String`), which is stored in `userData` and printed.
    *   **`catch` block:** If the `Future` completes with an error (because `fetchUserData` threw an `Exception`), the `catch (e)` block executes, catching the error object (`e`) and printing it.
    *   **`finally` block (optional but good practice):** Code here runs after the `try` or `catch` block finishes, useful for cleanup.
    *   The final `print` statement runs after the `try...catch...finally` block completes.