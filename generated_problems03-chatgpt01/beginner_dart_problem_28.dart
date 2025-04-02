Okay, here is a beginner Dart problem focusing on asynchronous programming with `async`/`await` and `Future.delayed`, along with its solution.

---

## Problem Description: Asynchronous Countdown Timer

**Goal:** Write a Dart function that simulates a countdown timer.

**Requirements:**

1.  Create an asynchronous function named `startCountdown`.
2.  This function should count down from 5 down to 1.
3.  Print each number during the countdown to the console.
4.  There should be a 1-second delay *between* printing each number.
5.  Use `async`, `await`, and `Future.delayed` to achieve the asynchronous behavior and the delay.
6.  After the countdown reaches 1 and the final delay occurs, print a "Blast off!" message.
7.  Create a `main` function that calls `startCountdown` and waits for it to complete before printing a final "Program finished." message.

**Example Console Output:**

```
Starting countdown...
5
4
3
2
1
Blast off!
Program finished.
```

---

## Solution Code

```dart
import 'dart:async'; // Import needed for Future and Duration

// Asynchronous function to perform the countdown
Future<void> startCountdown() async {
  print("Starting countdown...");

  // Loop from 5 down to 1
  for (int i = 5; i >= 1; i--) {
    // Print the current number
    print(i);

    // Wait for 1 second before the next iteration (or before finishing)
    // Use 'await' to pause the execution of this function until the Future completes.
    // Future.delayed creates a Future that completes after the given duration.
    await Future.delayed(Duration(seconds: 1));
  }

  // Print the final message after the loop completes
  print("Blast off!");
}

// Main function - the entry point of the program
Future<void> main() async {
  // Call the asynchronous countdown function and wait for it to complete.
  // 'await' ensures that the next line ('Program finished.') doesn't execute
  // until startCountdown has finished its execution.
  await startCountdown();

  // This line will only run after startCountdown() is fully done.
  print("Program finished.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library for using `Future` and `Duration`.
2.  **`Future<void> startCountdown() async`**:
    *   `async` marks the function as asynchronous, allowing the use of `await` inside it.
    *   `Future<void>` indicates that the function performs an asynchronous operation and doesn't return a specific value (`void`) when it completes.
3.  **`for (int i = 5; i >= 1; i--)`**: A standard loop to iterate from 5 down to 1.
4.  **`print(i);`**: Prints the current countdown number.
5.  **`await Future.delayed(Duration(seconds: 1));`**:
    *   `Duration(seconds: 1)` creates a duration object representing one second.
    *   `Future.delayed(...)` creates a `Future` that will complete after the specified duration.
    *   `await` pauses the execution of the `startCountdown` function *at this line* until the `Future.delayed` completes (i.e., after 1 second has passed). Then, the loop continues to the next iteration or finishes.
6.  **`print("Blast off!");`**: This is executed only after the loop has finished all its iterations and the final delay.
7.  **`Future<void> main() async`**: The `main` function is also marked `async` because it needs to use `await` to call `startCountdown`.
8.  **`await startCountdown();`**: This calls the `startCountdown` function. Crucially, `await` here ensures that the `main` function pauses and waits for the entire `startCountdown` function (including all its internal delays) to complete before moving to the next line.
9.  **`print("Program finished.");`**: This line is executed only after the `await startCountdown();` line has fully completed.