Okay, here is a beginner-level Dart problem focused on asynchronous programming with `Future`, `async`, and `await`, along with its solution.

---

**Problem Description**

**Title:** Dart Asynchronous Programming: Random Delayed Printer

**Objective:**
Understand the basics of asynchronous operations in Dart using `Future`, `async`, and `await` by creating a function that prints a message after a random delay.

**Task:**

1.  **Create an Asynchronous Function:**
    *   Define a function named `printAfterRandomDelay` that takes a single `String` argument called `message`.
    *   This function should be marked as `async` and return a `Future<void>` (since it doesn't return a value, just performs an action).
    *   Inside the function:
        *   Generate a random integer between 1 and 5 (inclusive). This will represent the delay time in seconds.
        *   Print a message indicating that the function has started and how long it will wait (e.g., `"Starting '$message'. Will wait for X seconds."`).
        *   Use `Future.delayed` with a `Duration` based on the random number of seconds you generated. `await` this future to pause the function's execution.
        *   After the delay, print the original `message` along with the time it waited (e.g., `"'message' printed after waiting X seconds."`).

2.  **Call the Function Multiple Times:**
    *   In your `main` function, call `printAfterRandomDelay` three or four times with different string messages (e.g., "Message A", "Message B", "Message C").
    *   Call them one after the other *without* using `await` in `main` initially.
    *   Add a final print statement in `main` *after* calling the functions (e.g., `"Main function finished initiating calls."`).

3.  **Observe the Output:**
    *   Run the program. Notice the order in which the "Starting..." messages appear compared to the order in which the final messages (after the delay) appear. They will likely not be in the same order due to the random delays.

**Hints:**
*   You'll need to import `dart:async` for `Future` and `dart:math` for `Random`.
*   Use `Random().nextInt(max) + 1` to get a random number in a specific range (remember `nextInt(max)` gives 0 to `max-1`).
*   `Duration(seconds: yourRandomNumber)` creates a duration object.
*   Remember the `async` keyword for the function signature and `await` before `Future.delayed`.
*   Because `main` doesn't `await` the `printAfterRandomDelay` calls, the program might exit before all delayed prints finish. To see all output in a simple script, you might need to add a final `await Future.delayed(...)` at the end of `main` that's longer than the maximum possible random delay.

---

**Solution Code**

```dart
import 'dart:async';
import 'dart:math'; // Required for Random

// 1. Create an Asynchronous Function
// Returns Future<void> because it performs an action asynchronously
// but doesn't return a specific value upon completion.
Future<void> printAfterRandomDelay(String message) async {
  // Generate a random delay between 1 and 5 seconds
  final random = Random();
  // nextInt(5) gives 0, 1, 2, 3, 4. Add 1 to get 1, 2, 3, 4, 5.
  final delaySeconds = random.nextInt(5) + 1; 
  final duration = Duration(seconds: delaySeconds);

  // Print starting message immediately
  print("Starting '$message'. Will wait for $delaySeconds seconds.");

  // Use await to pause execution *inside this function* until the delay is over
  await Future.delayed(duration);

  // Print the final message after the delay
  print("'$message' printed after waiting $delaySeconds seconds.");
}

// Make main async if you want to use await inside it (like for the final delay)
void main() async {
  print("--- Program Start ---");

  // 2. Call the Function Multiple Times
  // These calls start the asynchronous operations almost immediately,
  // without waiting for the previous one to finish.
  printAfterRandomDelay("Message A");
  printAfterRandomDelay("Message B");
  printAfterRandomDelay("Message C");
  printAfterRandomDelay("Message D");

  // This message will likely print before any of the delayed messages,
  // demonstrating that the calls above did not block the main execution flow.
  print("Main function finished initiating calls.");

  // 3. Observe the Output (and ensure program doesn't exit too early)
  // Since main doesn't wait for the futures above by default, the script
  // might exit before they complete. Add a delay in main to keep it alive.
  // We wait slightly longer than the maximum possible delay (5 seconds).
  // This await *does* pause the main function execution here.
  print("--- Waiting in main to allow async operations to complete ---");
  await Future.delayed(Duration(seconds: 6)); 
  
  print("--- Program End ---");
}
```

**Explanation of Output:**

When you run this code, you will see:

1.  `--- Program Start ---`
2.  All the "Starting..." messages will likely print very quickly, possibly interleaved but close together.
3.  `Main function finished initiating calls.` will print soon after the "Starting..." messages.
4.  `--- Waiting in main... ---`
5.  The final `"'message' printed after waiting X seconds."` messages will appear one by one as their respective random delays complete. Their order will depend entirely on the random delays generated (e.g., "Message C" might print before "Message A" if it got a shorter delay).
6.  `--- Program End ---` (after the 6-second delay in `main`).

This demonstrates that the `printAfterRandomDelay` calls started their work without blocking each other or the `main` function, and completed their tasks asynchronously based on their individual delays.