Okay, here is a beginner Dart problem focusing on `Future.wait` along with its solution.

---

**Problem Description**

**Goal:** Learn how to run multiple asynchronous operations concurrently using `Future.wait`.

**Scenario:**
Imagine you have two tasks that fetch data, represented by functions `fetchTask1()` and `fetchTask2()`. Each task takes some time to complete (simulated using `Future.delayed`).

*   `fetchTask1()`: Simulates a 2-second network request and returns the string `"Task 1 Result"`.
*   `fetchTask2()`: Simulates a 3-second database query and returns the string `"Task 2 Result"`.

If you were to run these tasks sequentially (waiting for the first to finish before starting the second), the total time would be approximately 2 + 3 = 5 seconds.

**Your Task:**

1.  Implement the `fetchTask1()` and `fetchTask2()` functions as described above. They should be `async` and return `Future<String>`. Use `Future.delayed` to simulate the work. Add print statements inside each function to indicate when it starts and finishes.
2.  In your `main` function (which should also be `async`), use `Future.wait` to start *both* `fetchTask1()` and `fetchTask2()` concurrently.
3.  `await` the result returned by `Future.wait`. This result will be a `List<String>` containing the results of the futures in the order they were provided to `Future.wait`.
4.  Print the results obtained from the list (e.g., "Result 1: ..." and "Result 2: ...").
5.  Add print statements at the beginning and end of `main` to observe the total execution time. Notice that the total time should be closer to the duration of the *longest* task (3 seconds) rather than the sum of both durations (5 seconds), because they run in parallel.

---

**Solution Code**

```dart
import 'dart:async';

// Simulates a task that takes 2 seconds to complete.
Future<String> fetchTask1() async {
  print("Task 1: Starting...");
  await Future.delayed(const Duration(seconds: 2));
  print("Task 1: Finished.");
  return "Task 1 Result";
}

// Simulates a task that takes 3 seconds to complete.
Future<String> fetchTask2() async {
  print("Task 2: Starting...");
  await Future.delayed(const Duration(seconds: 3));
  print("Task 2: Finished.");
  return "Task 2 Result";
}

Future<void> main() async {
  print("Main: Starting concurrent tasks...");
  
  // Record the start time to observe the total duration.
  final stopwatch = Stopwatch()..start();

  // Create a list of Futures by calling the async functions.
  // This starts both asynchronous operations immediately.
  List<Future<String>> futures = [
    fetchTask1(),
    fetchTask2(),
  ];

  // Use Future.wait to wait for all futures in the list to complete.
  // The operations run concurrently.
  // The result is a List<String> containing the results in the order
  // the Futures were provided in the 'futures' list.
  List<String> results = await Future.wait(futures);

  // Stop the stopwatch after both tasks are confirmed complete.
  stopwatch.stop();

  print("\nMain: Both tasks completed concurrently.");
  
  // Print the results obtained from the list.
  print("Result 1: ${results[0]}"); // Corresponds to fetchTask1's result
  print("Result 2: ${results[1]}"); // Corresponds to fetchTask2's result

  print("\nMain: Total execution time: ${stopwatch.elapsedMilliseconds} ms");
  print("Main: Finished.");

  // Expected Output Pattern:
  // Main: Starting concurrent tasks...
  // Task 1: Starting...
  // Task 2: Starting...
  // Task 1: Finished.      (After ~2 seconds)
  // Task 2: Finished.      (After ~3 seconds)
  //
  // Main: Both tasks completed concurrently.
  // Result 1: Task 1 Result
  // Result 2: Task 2 Result
  //
  // Main: Total execution time: ~3000 ms (plus small overhead)
  // Main: Finished.
}
```

---