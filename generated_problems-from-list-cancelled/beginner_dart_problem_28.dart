Okay, here is a beginner Dart problem focused on sequential asynchronous operations using `async`/`await`, along with its solution.

---

**Problem Description**

**Topic:** Asynchronous Programming (Futures, async/await) - Sequential Operations

**Goal:** Understand how `await` pauses the execution of an `async` function until a `Future` completes, leading to sequential execution of asynchronous tasks.

**Tasks:**

1.  **Create `fetchTask1`:**
    *   Define an `async` function named `fetchTask1` that returns a `Future<String>`.
    *   Inside the function, simulate a network delay of 1 second using `Future.delayed`.
    *   After the delay, the function should return the string `"Result from Task 1"`.
    *   *Optional:* Add a print statement inside `fetchTask1` to indicate when it starts and finishes.

2.  **Create `fetchTask2`:**
    *   Define an `async` function named `fetchTask2` that returns a `Future<String>`.
    *   Inside the function, simulate a network delay of 3 seconds using `Future.delayed`.
    *   After the delay, the function should return the string `"Result from Task 2"`.
    *   *Optional:* Add a print statement inside `fetchTask2` to indicate when it starts and finishes.

3.  **Implement `main`:**
    *   Make the `main` function `async`.
    *   Print a message indicating the start of operations (e.g., "Fetching data sequentially...").
    *   Use a `Stopwatch` to measure the total execution time. Start it before calling the tasks.
    *   Call `fetchTask1` and `await` its result. Store the result in a variable.
    *   Print the result obtained from `fetchTask1`.
    *   Call `fetchTask2` and `await` its result. Store the result in a variable.
    *   Print the result obtained from `fetchTask2`.
    *   Stop the `Stopwatch` and print the total elapsed time.

**Observation:** Pay attention to the order of the print statements and the total time taken. Since you are using `await` sequentially, `fetchTask2` should only start *after* `fetchTask1` has completed. The total time should be approximately the sum of the individual delays (1s + 3s ≈ 4s).

---

**Solution Code**

```dart
import 'dart:async';

// Task 1: Async function with a 1-second delay
Future<String> fetchTask1() async {
  print("Task 1 started...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 1));
  print("Task 1 finished.");
  return "Result from Task 1";
}

// Task 2: Async function with a 3-second delay
Future<String> fetchTask2() async {
  print("Task 2 started...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 3));
  print("Task 2 finished.");
  return "Result from Task 2";
}

// Main function to run tasks sequentially
void main() async {
  print("Fetching data sequentially...");

  // Start stopwatch to measure total time
  final stopwatch = Stopwatch()..start();

  // Await the first task, then print its result
  print("Awaiting Task 1...");
  String result1 = await fetchTask1();
  print("Received: $result1");

  // Await the second task (only starts after Task 1 is complete), then print its result
  print("\nAwaiting Task 2...");
  String result2 = await fetchTask2();
  print("Received: $result2");

  // Stop the stopwatch and print elapsed time
  stopwatch.stop();
  print("\nAll tasks completed sequentially.");
  print("Total time taken: ${stopwatch.elapsedMilliseconds} ms (approx ${stopwatch.elapsed.inSeconds} seconds)");
}

/*
Expected Output (order and timing are key):

Fetching data sequentially...
Awaiting Task 1...
Task 1 started...
Task 1 finished.
Received: Result from Task 1

Awaiting Task 2...
Task 2 started...
Task 2 finished.
Received: Result from Task 2

All tasks completed sequentially.
Total time taken: 4XXX ms (approx 4 seconds) // Exact milliseconds will vary slightly

*/
```