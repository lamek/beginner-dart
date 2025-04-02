Okay, here is a beginner-level Dart problem focusing on running asynchronous tasks in parallel using `Future.wait()`.

---

**Problem Description**

**Goal:** Simulate fetching weather data and news headlines concurrently and display them once both are available.

**Tasks:**

1.  **Create `fetchWeather()` function:**
    *   This function should simulate a network request that takes 2 seconds to complete.
    *   Use `Future.delayed` for the simulation.
    *   It should return a `Future<String>` which resolves to a weather report (e.g., `"Sunny, 25°C"`).
    *   Mark the function as `async`.
2.  **Create `fetchNews()` function:**
    *   This function should simulate a network request that takes 3 seconds to complete.
    *   Use `Future.delayed` for the simulation.
    *   It should return a `Future<String>` which resolves to a news headline (e.g., `"Dart 3.0 Released!"`).
    *   Mark the function as `async`.
3.  **Implement `main()` function:**
    *   Call `fetchWeather()` and `fetchNews()` to start both operations.
    *   Use `Future.wait()` to wait for *both* futures to complete *concurrently*.
    *   Once both futures have completed, print the results clearly, like:
        ```
        Fetching data...
        Weather: Sunny, 25°C
        News: Dart 3.0 Released!
        All data fetched!
        ```
    *   Note: The total time taken should be closer to 3 seconds (the duration of the longest task), not 5 seconds (the sum of both durations), demonstrating parallel execution.

---

**Solution Code**

```dart
import 'dart:async';

// Simulates fetching weather data (takes 2 seconds)
Future<String> fetchWeather() async {
  print("Starting weather fetch...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));
  print("Weather fetch complete.");
  return "Sunny, 25°C"; // Return the result
}

// Simulates fetching news headlines (takes 3 seconds)
Future<String> fetchNews() async {
  print("Starting news fetch...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 3));
  print("News fetch complete.");
  return "Dart 3.0 Released!"; // Return the result
}

// Main function to run the tasks in parallel
void main() async {
  print("Fetching data...");

  // Start both operations concurrently. We don't await them individually here.
  Future<String> weatherFuture = fetchWeather();
  Future<String> newsFuture = fetchNews();

  // Use Future.wait to wait for ALL futures in the list to complete.
  // The results are returned in a List in the same order as the futures passed.
  List<String> results = await Future.wait([weatherFuture, newsFuture]);

  // Extract results from the list
  String weatherResult = results[0]; // Result from weatherFuture
  String newsResult = results[1];    // Result from newsFuture

  // Print the combined results
  print("\n--- Results ---");
  print("Weather: $weatherResult");
  print("News: $newsResult");
  print("---------------\n");
  print("All data fetched!");
}
```

**Explanation:**

1.  `fetchWeather` and `fetchNews` are `async` functions returning `Future<String>`. They use `Future.delayed` to simulate asynchronous work.
2.  In `main`, we call `fetchWeather()` and `fetchNews()` *without* `await`. This starts both operations, returning `Future` objects immediately.
3.  `Future.wait([weatherFuture, newsFuture])` takes a list of Futures and returns a new Future that completes only when *all* the Futures in the list have completed. Crucially, the original Futures (`weatherFuture`, `newsFuture`) run concurrently during this wait.
4.  We `await` the result of `Future.wait()`. This pauses `main` until both fetching operations are done.
5.  The result of `Future.wait()` is a `List` containing the results of the completed Futures, in the same order they were provided in the input list.
6.  We then extract the results from the list and print them. Because the tasks run in parallel, the total execution time is determined by the longest task (3 seconds), plus a tiny overhead, not the sum of both (2 + 3 = 5 seconds).