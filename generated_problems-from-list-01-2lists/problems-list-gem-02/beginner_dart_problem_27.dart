Okay, here is a beginner Dart problem focused on `async`/`await` and simulating a delay, along with its solution.

---

**Problem Description**

**Topic:** Asynchronous Programming (Futures, async/await)

**Goal:** Simulate fetching user data from a network source, which typically takes some time. You'll create an asynchronous function that pauses for a few seconds before returning some data, and then call this function from your main program.

**Tasks:**

1.  **Create an `async` function:** Define a function named `fetchUserData` that is marked with the `async` keyword.
2.  **Simulate Delay:** Inside `fetchUserData`, use `Future.delayed` to pause execution for 3 seconds. This simulates the time taken for a network request.
3.  **Return Data:** After the delay, make `fetchUserData` return a simple `Map` containing user data: `{'name': 'Alice', 'id': 123}`. Remember that `async` functions implicitly return a `Future`.
4.  **Modify `main` function:** Mark your `main` function as `async`.
5.  **Call and `await`:** Inside `main`, call the `fetchUserData` function using the `await` keyword to wait for the `Future` to complete. Store the returned map in a variable.
6.  **Print Result:** Print the user data map that was fetched and returned. You might also want to add print statements before calling `fetchUserData` and after printing the result to see the execution flow.

---

**Solution Code**

```dart
import 'dart:async'; // Import needed for Future.delayed (though often implicitly available)

// 1. Create an async function named fetchUserData
Future<Map<String, dynamic>> fetchUserData() async {
  print("Fetching user data... please wait.");
  // 2. Simulate a 3-second delay
  await Future.delayed(Duration(seconds: 3));

  print("Data fetched successfully!");
  // 3. Return the user data map
  return {
    'name': 'Alice',
    'id': 123,
  };
}

// 4. Mark the main function as async
void main() async {
  print("Program started.");

  // 5. Call fetchUserData using await and store the result
  final Map<String, dynamic> userData = await fetchUserData();

  // 6. Print the fetched user data
  print("Received user data:");
  print(userData);

  print("Program finished.");
}

/*
Expected Output:

Program started.
Fetching user data... please wait.
(pause for 3 seconds)
Data fetched successfully!
Received user data:
{name: Alice, id: 123}
Program finished.

*/
```

---