Okay, here is a beginner Dart problem focusing on sequential asynchronous operations using `Future`, `async`, and `await`.

---

**Problem Description**

**Title:** Dart Beginner Problem: Sequential Asynchronous Tasks

**Goal:** Understand how to perform asynchronous operations one after another using `async` and `await` in Dart.

**Requirements:**

1.  **Create `fetchTask1()`:**
    *   Define an asynchronous function named `fetchTask1`.
    *   It should return a `Future<String>`.
    *   Inside the function, simulate a network delay of 1 second using `Future.delayed`.
    *   After the delay, the function should return the string "Task 1 Complete".
    *   Add print statements inside the function to indicate when it starts and finishes (optional but helpful).

2.  **Create `fetchTask2()`:**
    *   Define another asynchronous function named `fetchTask2`.
    *   It should return a `Future<String>`.
    *   Inside the function, simulate a *different* network delay of 3 seconds using `Future.delayed`.
    *   After the delay, the function should return the string "Task 2 Complete".
    *   Add print statements inside the function to indicate when it starts and finishes (optional but helpful).

3.  **Implement `main()`:**
    *   Make the `main` function `async`.
    *   Use a `Stopwatch` to measure the total execution time. Start it at the beginning of `main`.
    *   Call `fetchTask1()` using `await` and store its result in a variable.
    *   Print the result obtained from `fetchTask1()`.
    *   **Immediately after** the first `await` completes, call `fetchTask2()` using `await` and store its result.
    *   Print the result obtained from `fetchTask2()`.
    *   Stop the `Stopwatch` and print the total elapsed time in milliseconds or seconds.

**Expected Output Observation:**

Notice that `fetchTask2` only starts *after* `fetchTask1` has fully completed because of the sequential `await` calls. The total execution time should be approximately the sum of the individual delays (1 second + 3 seconds ≈ 4 seconds), plus some minor overhead.

---

**Solution Code**

```dart
import 'dart:async';

// Asynchronous function simulating Task 1 with a 1-second delay.
Future<String> fetchTask1() async {
  print('Task 1: Starting fetch...');
  // Simulate network delay
  await Future.delayed(const Duration(seconds: 1));
  print('Task 1: Fetched data!');
  return 'Task 1 Complete';
}

// Asynchronous function simulating Task 2 with a 3-second delay.
Future<String> fetchTask2() async {
  print('Task 2: Starting fetch...');
  // Simulate network delay
  await Future.delayed(const Duration(seconds: 3));
  print('Task 2: Fetched data!');
  return 'Task 2 Complete';
}

// Main function demonstrating sequential async execution.
void main() async {
  print('Main: Starting program.');

  // Start a stopwatch to measure total execution time.
  final stopwatch = Stopwatch()..start();

  print('Main: Calling fetchTask1...');
  // Wait for fetchTask1 to complete before proceeding.
  String result1 = await fetchTask1();
  print('Main: Received result -> $result1');

  print('\nMain: Calling fetchTask2...');
  // Wait for fetchTask2 to complete before proceeding.
  // This call only happens *after* fetchTask1 is done.
  String result2 = await fetchTask2();
  print('Main: Received result -> $result2');

  // Stop the stopwatch.
  stopwatch.stop();

  print('\nMain: All tasks finished.');
  print('Total execution time: ${stopwatch.elapsedMilliseconds} ms (approx ${stopwatch.elapsed.inSeconds} seconds)');
}
```

**Explanation:**

1.  `fetchTask1` and `fetchTask2` are marked `async` and return `Future<String>`. They use `Future.delayed` to simulate work and `await` pauses their execution *inside* the function until the delay is over.
2.  `main` is marked `async` so we can use `await` inside it.
3.  `await fetchTask1();` pauses the execution of `main` until `fetchTask1`'s Future completes (after ~1 second). The result is then assigned to `result1`.
4.  Only *after* the first `await` finishes does the program proceed to `await fetchTask2();`. This pauses `main` again until `fetchTask2`'s Future completes (after ~3 seconds).
5.  Because the tasks run one after the other, the total time is the sum of their durations (~1s + ~3s = ~4s).
6.  The `Stopwatch` confirms this approximate total time.