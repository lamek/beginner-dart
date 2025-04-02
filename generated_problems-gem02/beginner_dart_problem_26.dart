Okay, here is a beginner Dart problem focused on `Future.delayed` and `async`/`await`.

---

**Problem Description**

**Title:** Delayed Greeting

**Concept:** This exercise introduces basic asynchronous programming in Dart using `Future` and the `async`/`await` keywords. You'll learn how to perform an action after a specific amount of time has passed.

**Task:**
Write a Dart program that defines an asynchronous function called `printDelayedGreeting`. This function should:
1.  Accept no arguments.
2.  Use `Future.delayed()` to wait for exactly 2 seconds.
3.  After the 2-second delay, print the message: "Hello after 2 seconds!" to the console.
4.  Use the `async` and `await` keywords correctly to handle the delay.
5.  Call this `printDelayedGreeting` function from your `main` function and ensure the program waits for the greeting to be printed before potentially exiting (hint: `main` can also be `async`).

**Expected Output:**
The program should pause for approximately 2 seconds and then print:
```
Hello after 2 seconds!
```
*(Optionally, you could add print statements before starting the delay and after the function call in `main` to better visualize the asynchronous execution flow).*

---

**Solution Code**

```dart
import 'dart:async'; // Import needed for Future

// Define the asynchronous function
Future<void> printDelayedGreeting() async {
  print("Greeting function started, waiting for delay...");

  // Use Future.delayed to pause execution for 2 seconds.
  // The 'await' keyword pauses the execution of printDelayedGreeting
  // until the Future completes.
  await Future.delayed(Duration(seconds: 2));

  // This line will only execute after the 2-second delay.
  print("Hello after 2 seconds!");

  print("Greeting function finished.");
}

// The main function, marked as async to allow using await inside it.
Future<void> main() async {
  print("Program started.");

  // Call the asynchronous function and wait for it to complete.
  await printDelayedGreeting();

  print("Program finished.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library that includes the `Future` class.
2.  **`Future<void> printDelayedGreeting() async`**:
    *   `async` marks the function as asynchronous, allowing the use of `await` inside it.
    *   `Future<void>` indicates that the function performs an asynchronous operation and doesn't return a meaningful value when it completes (hence `void`).
3.  **`await Future.delayed(Duration(seconds: 2));`**:
    *   `Duration(seconds: 2)` creates an object representing a 2-second time span.
    *   `Future.delayed(...)` creates a `Future` that completes after the specified duration.
    *   `await` pauses the execution of `printDelayedGreeting` *at this line* until the `Future` returned by `Future.delayed` completes (i.e., until 2 seconds have passed).
4.  **`print("Hello after 2 seconds!");`**: This line is executed only *after* the `await` on the previous line finishes.
5.  **`Future<void> main() async`**: The `main` function is also marked `async` so we can use `await` inside it.
6.  **`await printDelayedGreeting();`**: This line calls the asynchronous function. The `await` here ensures that the `main` function waits for `printDelayedGreeting` to fully complete (including its internal delay) before proceeding to the final `print("Program finished.");` statement. This prevents the program from potentially exiting before the delayed greeting is printed.