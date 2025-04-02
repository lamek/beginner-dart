Okay, here is the Dart problem and solution based on your description.

---

**Problem Description**

**Topic:** Asynchronous Programming (Futures, async/await)

**Problem:** Delayed Greeting

**Goal:** Learn how to use `async`, `await`, and `Future.delayed` for basic asynchronous operations in Dart.

**Task:**

1.  Create an asynchronous function named `greetAfterDelay`.
2.  This function should accept two parameters: a `String name` and an `int seconds`.
3.  The function should return a `Future<void>` (indicating it performs an action asynchronously but doesn't return a specific value).
4.  Inside the function, use `Future.delayed` to pause execution for the specified number of `seconds`. Remember that `Future.delayed` requires a `Duration` object.
5.  After the delay completes, the function should print the greeting "Hello, \[name]!" to the console (replacing `[name]` with the actual name passed).
6.  Mark the function with the `async` keyword.
7.  In your `main` function, call `greetAfterDelay` with a sample name (e.g., "World") and a delay (e.g., 3 seconds).
8.  Use the `await` keyword when calling `greetAfterDelay` from `main` to ensure the program waits for the greeting to be printed before potentially exiting. Make sure your `main` function is also marked `async`.

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future and Duration

// 1. Create an asynchronous function `greetAfterDelay`
// 2. Accepts `String name` and `int seconds`
// 3. Returns `Future<void>`
// 6. Marked with `async`
Future<void> greetAfterDelay(String name, int seconds) async {
  print("Greeting scheduled for $name after $seconds second(s)...");

  // 4. Use `Future.delayed` to pause for `seconds`
  //    Create a Duration object from the integer seconds.
  await Future.delayed(Duration(seconds: seconds));

  // 5. After the delay, print the greeting
  print("Hello, $name!");
}

// 7. Call `greetAfterDelay` from `main`
// 8. Use `await` and mark `main` as `async`
Future<void> main() async {
  print("Program starting...");

  // Call the async function and wait for it to complete
  await greetAfterDelay("World", 3);

  print("Greeting task complete.");
  print("Program finished.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library for asynchronous operations, including `Future` and `Duration`.
2.  **`Future<void> greetAfterDelay(...) async { ... }`**: Defines an `async` function. It returns `Future<void>` because it performs an action (printing) asynchronously but doesn't yield a data value upon completion.
3.  **`await Future.delayed(Duration(seconds: seconds));`**: This is the core of the delay.
    *   `Duration(seconds: seconds)` creates a `Duration` object representing the desired delay time.
    *   `Future.delayed(...)` creates a `Future` that completes after that duration.
    *   `await` pauses the execution of `greetAfterDelay` *at this line* until the `Future.delayed` completes. The rest of the Dart program (including the event loop) can continue running other tasks if available.
4.  **`print("Hello, $name!");`**: This line executes only *after* the `await Future.delayed` has finished.
5.  **`Future<void> main() async { ... }`**: The `main` function is marked `async` so we can use `await` inside it.
6.  **`await greetAfterDelay("World", 3);`**: This calls the async function. The `await` keyword pauses the execution of `main` *at this line* until the `Future` returned by `greetAfterDelay` completes (which happens after the inner delay and the print statement inside `greetAfterDelay` have finished).
7.  **Print statements in `main`**: The print statements before and after the `await` demonstrate the flow: "Program starting..." prints immediately, then the program waits for `greetAfterDelay`, and finally "Greeting task complete." and "Program finished." print.