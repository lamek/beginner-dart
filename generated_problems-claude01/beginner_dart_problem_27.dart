Okay, here is a beginner Dart problem focusing on asynchronous programming with Futures and async/await, along with its solution.

---

**Problem Description: Simple Data Fetcher**

**Goal:**
Write a Dart program that simulates fetching data from a network source. This involves creating a function that returns a `Future` which completes after a delay. While waiting for the `Future` to complete, your program should display a "Loading..." message. Once the data is "fetched" (i.e., the `Future` completes), the program should print the fetched data.

**Requirements:**

1.  **Create an asynchronous function `fetchUserData()`:**
    *   This function should simulate fetching user data.
    *   It should return a `Future<String>`.
    *   Inside the function, use `Future.delayed()` to introduce a delay of 2 seconds to simulate network latency.
    *   After the 2-second delay, the `Future` should complete with the string value: `"User Data: John Doe"`.

2.  **Implement the `main` function:**
    *   The `main` function must be marked as `async` because it will use the `await` keyword.
    *   Immediately print the message: `"Fetching user data..."`.
    *   Call the `fetchUserData()` function and use the `await` keyword to pause execution until the `Future` completes.
    *   Store the result obtained from the `Future` in a variable.
    *   Print the fetched data (the string stored in the variable).

**Expected Output:**

```
Fetching user data...
User Data: John Doe
```
*(Note: There will be a 2-second pause between the first and second lines of output)*

---

**Solution Code:**

```dart
import 'dart:async'; // Import the async library for Future.delayed

// 1. Create an asynchronous function `fetchUserData()`
// This function simulates fetching data and returns a Future<String>.
Future<String> fetchUserData() {
  print('Starting data fetch simulation...'); // Optional: shows when the function starts

  // Use Future.delayed to simulate a network request taking 2 seconds.
  return Future.delayed(Duration(seconds: 2), () {
    // This callback function runs after the 2-second delay.
    // It returns the simulated data.
    print('Data fetch simulation complete.'); // Optional: shows when the delay ends
    return "User Data: John Doe";
  });
}

// 2. Implement the `main` function
// The main function needs to be marked `async` to use `await`.
Future<void> main() async {
  // Print the loading message immediately.
  print("Fetching user data...");

  // Call the asynchronous function `fetchUserData()` and wait for it to complete.
  // The `await` keyword pauses execution here until the Future resolves.
  String userData = await fetchUserData();

  // Once the Future completes, the execution continues.
  // Print the data received from the Future.
  print(userData);
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports necessary tools for asynchronous operations, specifically `Future.delayed` and `Duration`.
2.  **`Future<String> fetchUserData()`**: Defines a function that promises to return a `String` value *in the future*.
3.  **`Future.delayed(Duration(seconds: 2), () => "User Data: John Doe")`**: This creates a `Future` that waits for 2 seconds and then completes with the value `"User Data: John Doe"`. The function `() => "User Data: John Doe"` is the computation that runs after the delay.
4.  **`Future<void> main() async`**: The `main` function is marked `async`, allowing the use of `await` inside it. It returns `Future<void>` because asynchronous functions implicitly return Futures.
5.  **`print("Fetching user data...");`**: This line executes immediately when `main` starts.
6.  **`String userData = await fetchUserData();`**:
    *   `fetchUserData()` is called. It returns an *incomplete* `Future`.
    *   `await` pauses the execution of the `main` function *at this line* until the `Future` returned by `fetchUserData()` completes. Dart can perform other tasks while `main` is paused.
    *   Once the `Future` completes (after 2 seconds), `await` extracts the resulting value (`"User Data: John Doe"`) and assigns it to the `userData` variable.
7.  **`print(userData);`**: This line executes only *after* the `await` completes, printing the fetched data.