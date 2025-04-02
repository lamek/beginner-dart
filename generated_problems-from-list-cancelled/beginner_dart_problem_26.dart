Okay, here is the beginner Dart problem and its solution based on your description.

---

**Problem Description**

**Topic:** Asynchronous Programming (Futures, async/await) - Simulated Data Fetch

**Goal:** Your task is to simulate fetching user data asynchronously.

**Requirements:**

1.  Create an asynchronous function named `fetchUserData`.
2.  This function should return a `Future` that eventually resolves to a `String` (i.e., `Future<String>`).
3.  Inside `fetchUserData`, simulate a network delay of 2 seconds using `Future.delayed`.
4.  After the 2-second delay, the function should return the string literal: `"User data loaded!"`.
5.  In your `main` function, which must also be marked as `async`, call `fetchUserData`.
6.  Use the `await` keyword to wait for the `Future` returned by `fetchUserData` to complete.
7.  Print the resulting string (the fetched data) to the console.

---

**Solution Code**

```dart
import 'dart:async'; // Import needed for Future and Duration

// 1. Create an async function returning Future<String>
Future<String> fetchUserData() async {
  print("Starting data fetch..."); // Optional: Indicate the start of the async operation

  // 3. Simulate a network delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // 4. Return the string after the delay
  return "User data loaded!";
}

// 5. Mark main as async
void main() async {
  print("Program started.");

  // 6. Call fetchUserData and wait for the result using await
  print("Calling fetchUserData...");
  String data = await fetchUserData();

  // 7. Print the result
  print(data); // Output: User data loaded!

  print("Program finished.");
}
```

**Explanation:**

1.  `fetchUserData` is marked `async`, allowing the use of `await` inside it and automatically wrapping its return value in a `Future`.
2.  `Future<String>` specifies that this function will eventually produce a `String` value.
3.  `Future.delayed(Duration(seconds: 2))` creates a `Future` that completes after a 2-second pause. `await` pauses the execution *within* `fetchUserData` until this delay is over.
4.  The `return "User data loaded!";` statement provides the value that the `Future` returned by `fetchUserData` will complete with.
5.  `main` is marked `async` because it needs to use the `await` keyword.
6.  `await fetchUserData()` calls the function and pauses the execution of `main` until the `Future` from `fetchUserData` completes. The completed value (`"User data loaded!"`) is then assigned to the `data` variable.
7.  `print(data)` displays the fetched result after the delay.