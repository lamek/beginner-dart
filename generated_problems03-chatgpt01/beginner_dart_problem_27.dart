Okay, here is a beginner Dart problem focused on asynchronous programming using `Future`, `async`, and `await` to simulate an API call.

---

**Problem Description**

**Goal:**
Write a Dart program that simulates fetching user data from a remote server. The fetching process takes time, so it needs to be handled asynchronously.

**Requirements:**

1.  **Create a function `fetchUserData`:**
    *   This function should return a `Future<String>`. A `Future` represents a value that will be available *in the future*. In this case, it will eventually provide a `String` containing the user's name.
    *   Inside `fetchUserData`, use `Future.delayed()` to simulate a network request that takes **3 seconds** to complete.
    *   After the 3-second delay, the `Future` should complete with a sample user name string (e.g., "Sarah Connor").

2.  **Implement the `main` function:**
    *   The `main` function needs to call `fetchUserData`.
    *   Since `fetchUserData` returns a `Future`, `main` must use `async` and `await` to wait for the data to arrive before proceeding.
    *   Print a message like "Fetching user data..." *before* starting the fetch operation.
    *   Once the data is received (after the 3-second delay), print the fetched user name, like "User data received: [User Name]".
    *   Print a final message like "Program finished." *after* the user data has been printed.

**Example Output:**

```
Fetching user data...
(after ~3 seconds)
User data received: Sarah Connor
Program finished.
```

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future and Future.delayed

// 1. Function to simulate fetching data asynchronously
Future<String> fetchUserData() {
  print("Simulating network request...");
  // Use Future.delayed to simulate a delay of 3 seconds.
  // The second argument is a function that runs *after* the delay.
  // This function returns the value the Future will complete with.
  return Future.delayed(const Duration(seconds: 3), () {
    print("Data fetched!");
    return 'Sarah Connor'; // The fake user data
  });
}

// 2. Main function to call the asynchronous operation
// We mark main as 'async' so we can use 'await' inside it.
void main() async {
  print('Fetching user data...');

  // 'await' pauses the execution of 'main' until the Future returned
  // by fetchUserData() completes. The result of the Future is then assigned
  // to the 'userData' variable.
  try {
    String userData = await fetchUserData();

    // This line will only execute after the Future completes (after 3 seconds)
    print('User data received: $userData');
  } catch (error) {
    // It's good practice to handle potential errors in async operations
    print('Error fetching data: $error');
  }

  // This line executes after the 'await' is done (or if an error occurred and was caught)
  print('Program finished.');
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library for asynchronous operations like `Future`.
2.  **`fetchUserData()`**: This function returns a `Future<String>`. It immediately returns the `Future` object created by `Future.delayed`. The code inside the `()` => `{...}` block (the callback function) only runs *after* the specified `Duration`.
3.  **`main() async`**: The `async` keyword allows the use of `await` within the function.
4.  **`await fetchUserData()`**: This is the core of the asynchronous handling. `await` tells Dart to pause the execution of the `main` function *at this line* until the `Future` returned by `fetchUserData()` completes. Once the `Future` completes with the value ('Sarah Connor'), that value is assigned to `userData`, and the execution of `main` resumes.
5.  **`try...catch`**: While not strictly required by the problem description, wrapping the `await` call in a `try...catch` block is best practice for handling potential errors that might occur during the asynchronous operation (e.g., a real network error).
6.  **Print Statements**: The order of print statements demonstrates the asynchronous flow. "Fetching user data..." prints immediately. Then there's a pause. Then "User data received..." prints, followed immediately by "Program finished.".