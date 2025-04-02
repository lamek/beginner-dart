Okay, here is a beginner Dart problem focused on `Future.delayed` and `async`/`await`, along with its solution.

---

**Problem Description**

**Title:** Delayed Greeting

**Goal:** Write a Dart function that prints the message "Hello!" to the console, but only *after* a delay of 2 seconds.

**Requirements:**

1.  Create a function named `printDelayedGreeting`.
2.  This function should not print immediately when called.
3.  Inside the function, use `Future.delayed()` to introduce a pause of 2 seconds.
4.  After the 2-second delay completes, the function should print the string "Hello!".
5.  You will need to use `async` and `await` to handle the `Future`.
6.  Create a `main` function to call `printDelayedGreeting` and demonstrate that it works. You might want to print messages before and after calling your function in `main` to observe the delay.

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future and Duration

// Function that waits for 2 seconds before printing "Hello!"
Future<void> printDelayedGreeting() async {
  print("Function called. Waiting for 2 seconds...");
  // Use await to pause execution until the Future completes after 2 seconds.
  await Future.delayed(const Duration(seconds: 2));
  // This line will only execute after the delay.
  print("Hello!");
}

// Main function to execute the program
void main() async {
  print("Program started.");
  // Call the asynchronous function and wait for it to complete.
  await printDelayedGreeting();
  print("Program finished.");
}

/*
Expected Output:

Program started.
Function called. Waiting for 2 seconds...
(Pause for approximately 2 seconds)
Hello!
Program finished.

*/
```