Okay, here is a beginner Dart problem focused on `Future.delayed` and `.then()`, along with its solution.

---

### Problem Description: Delayed Greeting using Future.delayed and .then()

**Goal:** Write a Dart program that prints a specific greeting message to the console, but only *after* a 2-second delay.

**Requirements:**

1.  Print an initial message to the console indicating that the greeting process is starting (e.g., "Starting greeting process...").
2.  Use `Future.delayed` to introduce a pause of exactly 2 seconds.
3.  Configure the `Future.delayed` call so that after the delay, it completes with a specific `String` value (e.g., `"Hello after 2 seconds!"`).
4.  Use the `.then()` method on the `Future` returned by `Future.delayed`.
5.  Inside the callback function provided to `.then()`, print the greeting string that the `Future` completed with.
6.  Print a final message immediately after scheduling the future (e.g., "Greeting scheduled!") to demonstrate that the `Future.delayed` call does not block the main program execution.

**Expected Console Output Order:**

```
Starting greeting process...
Greeting scheduled!
// (after a 2-second pause)
Hello after 2 seconds!
```

---

### Solution Code:

```dart
import 'dart:async'; // Required for Future and Duration

void main() {
  // 1. Print the initial message
  print("Starting greeting process...");

  // 2. Use Future.delayed for a 2-second pause
  // 3. Configure it to return a specific String after the delay
  Future<String> delayedGreeting = Future.delayed(Duration(seconds: 2), () {
    // This function runs after 2 seconds and provides the Future's result
    return "Hello after 2 seconds!";
  });

  // 4. Use .then() to handle the completed Future
  delayedGreeting.then((String greetingMessage) {
    // 5. Inside the .then() callback, print the received greeting
    print(greetingMessage);
  });

  // 6. Print the message indicating the Future has been scheduled
  print("Greeting scheduled!");
}
```

---