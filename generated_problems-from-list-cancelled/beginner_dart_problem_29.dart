Okay, here is a beginner Dart problem focusing on `Future.wait` for concurrent asynchronous operations.

---

**Problem Description**

**Topic:** Asynchronous Programming (Futures, async/await) - Parallel Async Operations with `Future.wait`

**Goal:** Learn how to run multiple asynchronous operations concurrently and wait for all of them to complete using `Future.wait`.

**Scenario:**
You are given two functions, `fetchTask1()` and `fetchTask2()`, which simulate fetching data from different sources. `fetchTask1()` takes 2 seconds to complete, and `fetchTask2()` takes 3 seconds.

```dart
// Pre-defined functions (Assume these are provided)
Future<String> fetchTask1() async {
  print('Task 1 started...');
  await Future.delayed(const Duration(seconds: 2));
  print('Task 1 finished.');
  return 'Result from Task 1';
}

Future<String> fetchTask2() async {
  print('Task 2 started...');
  await Future.delayed(const Duration(seconds: 3));
  print('Task 2 finished.');
  return 'Result from Task 2';
}
```

**Your Task:**

1.  Create an `async` `main` function.
2.  Inside `main`, call both `fetchTask1()` and `fetchTask2()` in a way that they start executing *concurrently* (at the same time).
3.  Use `Future.wait()` to wait for *both* tasks to complete.
4.  Once `Future.wait()` completes, it will return a `List<String>` containing the results of `fetchTask1` and `fetchTask2` (in the order you passed the Futures to `Future.wait`).
5.  Print both results from the list returned by `Future.wait`.
6.  **(Optional but recommended):** Use a `Stopwatch` to measure the total time taken from starting the tasks until both results are available. Print the elapsed time. Observe that the total time should be close to the duration of the *longest* task (around 3 seconds), not the sum of both (5 seconds), demonstrating the benefit of concurrency.

---

**Solution Code**

```dart
import 'dart:async';

// Function to simulate the first asynchronous task
Future<String> fetchTask1() async {
  print('Task 1 started...');
  // Simulate network delay or heavy computation
  await Future.delayed(const Duration(seconds: 2));
  print('Task 1 finished.');
  return 'Result from Task 1';
}

// Function to simulate the second asynchronous task
Future<String> fetchTask2() async {
  print('Task 2 started...');
  // Simulate a different network delay or heavy computation
  await Future.delayed(const Duration(seconds: 3));
  print('Task 2 finished.');
  return 'Result from Task 2';
}

// Main function to run the tasks concurrently
Future<void> main() async {
  print('Starting concurrent execution with Future.wait...');

  // Start a stopwatch to measure the total time
  final stopwatch = Stopwatch()..start();

  try {
    // Create a list of Futures. Calling the functions here starts them.
    // They run concurrently because we don't await them individually yet.
    List<Future<String>> futures = [
      fetchTask1(), // Starts Task 1
      fetchTask2(), // Starts Task 2
    ];

    // Use Future.wait to wait for ALL futures in the list to complete.
    // The execution pauses here until both fetchTask1 and fetchTask2 are done.
    print('Waiting for both tasks to complete...');
    List<String> results = await Future.wait(futures);

    // Stop the stopwatch after both tasks are complete
    stopwatch.stop();

    // Print the results obtained from the list
    print('\n--- All tasks completed ---');
    print('Result from Task 1: ${results[0]}'); // Result of fetchTask1()
    print('Result from Task 2: ${results[1]}'); // Result of fetchTask2()
    print('---------------------------');

    // Print the total time taken
    print('Total time taken: ${stopwatch.elapsedMilliseconds} ms');
    print('(Should be slightly more than 3000 ms, demonstrating concurrency)');

  } catch (e) {
    // Handle potential errors from any of the futures
    print('An error occurred: $e');
    stopwatch.stop(); // Ensure stopwatch is stopped even on error
  }
}
```

**Explanation:**

1.  We define the two async functions `fetchTask1` and `fetchTask2` that return `Future<String>` and simulate work using `Future.delayed`.
2.  In `main`, we start a `Stopwatch`.
3.  We create a `List<Future<String>>` called `futures`. Crucially, we call `fetchTask1()` and `fetchTask2()` *without* `await` when adding them to the list. This *starts* both operations, allowing them to run concurrently.
4.  `await Future.wait(futures)` pauses the `main` function until *all* the Futures inside the `futures` list have completed.
5.  Once `Future.wait` completes, it returns a `List<String>` where the elements correspond to the results of the Futures in the original list (`results[0]` is the result of `fetchTask1()`, `results[1]` is the result of `fetchTask2()`).
6.  We stop the stopwatch and print the results and the elapsed time. The time will be approximately 3 seconds (the duration of the longest task, `fetchTask2`), showing that the 2-second task ran concurrently within the same 3-second timeframe.