Okay, here is a beginner Dart problem focusing on asynchronous programming with Futures, async/await, and simulating an API call, along with its solution.

---

## Problem: Simulate Fetching a Welcome Message

**Description:**

Imagine you need to fetch a personalized welcome message from a server for a user. This network request takes some time to complete. Your task is to simulate this process using Dart's asynchronous features.

**Requirements:**

1.  **Create a function `fetchWelcomeMessage`:**
    *   This function should simulate a network delay.
    *   It should return a `Future<String>`.
    *   Inside the function, use `Future.delayed()` to wait for 3 seconds.
    *   After the delay, the `Future` should complete with the string value: `"Welcome, Dart Coder!"`.

2.  **Use the function in `main`:**
    *   The `main` function needs to be marked as `async`.
    *   Print a message to the console *before* starting the fetch, like `"Fetching welcome message..."`.
    *   Call the `fetchWelcomeMessage` function and use `await` to wait for the `Future` to complete and get the message string.
    *   Print the fetched welcome message to the console.
    *   Print a final message *after* the message has been fetched and printed, like `"Program finished."`.

**Expected Output:**

```
Fetching welcome message...
(pause for 3 seconds)
Welcome, Dart Coder!
Program finished.
```

---

## Solution:

```dart
import 'dart:async';

// 1. Create a function that simulates fetching data asynchronously
Future<String> fetchWelcomeMessage() {
  // Simulate a network delay of 3 seconds
  return Future.delayed(Duration(seconds: 3), () {
    // Return the data once the delay is over
    return "Welcome, Dart Coder!";
  });
  // Alternatively, using async/await within the fetch function itself:
  // async {
  //   await Future.delayed(Duration(seconds: 3));
  //   return "Welcome, Dart Coder!";
  // }
}

// 2. Use the asynchronous function in main
void main() async { // Mark main as async to use await
  print("Fetching welcome message...");

  // Use await to pause execution until the Future completes
  String message = await fetchWelcomeMessage();

  // Once the Future completes, print the result
  print(message);

  print("Program finished.");
}
```

**Explanation:**

1.  **`fetchWelcomeMessage()`:** This function returns a `Future<String>`. Instead of returning a `String` immediately, it returns a `Future` object. `Future.delayed()` creates a `Future` that completes after the specified duration (3 seconds) and then executes the provided callback function `() => "Welcome, Dart Coder!"`, which returns the desired string.
2.  **`main() async`:** The `main` function is marked with the `async` keyword. This allows us to use the `await` keyword inside it.
3.  **`print("Fetching welcome message...");`:** This line executes immediately.
4.  **`String message = await fetchWelcomeMessage();`:** The `await` keyword pauses the execution of the `main` function *at this line* until the `Future` returned by `fetchWelcomeMessage()` completes. It doesn't block the entire program (other asynchronous operations could potentially run). Once the `Future` completes with the string value, `await` "unwraps" the value from the `Future` and assigns it to the `message` variable.
5.  **`print(message);`:** This line executes only *after* the `await` has finished and `message` has received its value.
6.  **`print("Program finished.");`:** This line executes after the welcome message has been printed.