Okay, here is a beginner Dart problem focused on asynchronous programming using `Future`, `async`, and `await`, along with its solution.

---

**Problem Description**

**Title:** Simulated API Data Fetch

**Goal:** Understand and implement basic asynchronous data fetching in Dart using `Future`, `async`, and `await`.

**Task:**

1.  **Create an asynchronous function:** Define a function named `fetchUserData` that returns a `Future<String>`.
2.  **Simulate Network Delay:** Inside `fetchUserData`, use `Future.delayed()` to simulate a network request that takes 3 seconds to complete.
3.  **Simulate Data:** After the delay, the `Future` should complete with a simple `String` value, for example, `"User Data: John Doe (Age 30)"`.
4.  **Call the function:** In your `main` function, call `fetchUserData`.
5.  **Handle the Future:** Use `async` and `await` in the `main` function to wait for the `fetchUserData` function to complete.
6.  **Print the result:** Once the data is fetched (i.e., the `Future` completes), print the fetched string to the console. Add print statements before calling the function and after receiving the data to observe the execution flow.

**Example Output:**

```
Fetching user data...
(Program waits here for 3 seconds)
User Data: John Doe (Age 30)
Program finished.
```

---

**Solution Code**

```dart
import 'dart:async'; // Import the async library for Future and Duration

// 1. Create an asynchronous function that returns a Future<String>
Future<String> fetchUserData() async {
  // 2. Simulate a network delay of 3 seconds
  print("Simulating network request...");
  await Future.delayed(Duration(seconds: 3));

  // 3. Return the simulated data after the delay
  print("Data fetched!");
  return "User Data: John Doe (Age 30)";
}

// 4. Use async on main to allow using await inside it
void main() async {
  print("Program started.");
  print("Fetching user data...");

  // 5. Call the async function and wait for its result using await
  final String userData = await fetchUserData();

  // 6. Print the result after the Future completes
  print(userData);
  print("Program finished.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports necessary classes like `Future` and `Duration`.
2.  **`Future<String> fetchUserData() async`**: Declares an asynchronous function (`async`) that promises to return a `String` eventually (wrapped in a `Future`).
3.  **`await Future.delayed(Duration(seconds: 3))`**: This line pauses the execution *inside* the `fetchUserData` function for 3 seconds, simulating a network delay. The `await` keyword is crucial here; it waits for the `Future.delayed` to complete before moving to the next line within this function.
4.  **`return "User Data: John Doe (Age 30)";`**: Once the delay is over, the function returns the simulated data string. Because the function is `async`, this string is automatically wrapped in a completed `Future<String>`.
5.  **`void main() async`**: The `main` function is marked `async` so we can use `await` inside it.
6.  **`final String userData = await fetchUserData();`**: This is where `main` calls `fetchUserData`. The `await` keyword pauses the execution of `main` *at this line* until the `Future` returned by `fetchUserData` completes. Once it completes, the result (`"User Data: John Doe (Age 30)"`) is extracted from the `Future` and assigned to the `userData` variable.
7.  **`print(...)` statements**: These help visualize when different parts of the code execute, demonstrating the pause introduced by `await`.