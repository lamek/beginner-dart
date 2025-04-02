Okay, here is a beginner Dart problem focusing on `async`/`await` and `Future.delayed`, along with its solution.

---

**Problem Description**

**Topic:** Asynchronous Programming in Dart (Futures, async/await)

**Goal:** Simulate fetching data from a network (like a weather service) which takes some time to respond.

**Task:**

1.  Create an `async` function named `getWeatherReport` that doesn't take any arguments.
2.  Inside `getWeatherReport`, use `Future.delayed` to simulate a network delay of 1 second.
3.  After the delay, the `getWeatherReport` function should return a `String` representing a fictional weather report (e.g., "Sunny, 25 degrees Celsius").
4.  In your `main` function, call `getWeatherReport`. Since `getWeatherReport` is asynchronous and returns a `Future`, you'll need to use `await` to get the actual `String` result.
5.  Print the received weather report to the console. Remember that to use `await` inside `main`, the `main` function itself must be marked as `async`.
6.  Add print statements before calling the function and after receiving the result to see the asynchronous nature in action (e.g., "Fetching weather report..." and "Weather Report Received: ...").

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future.delayed

// 1. Create an async function named getWeatherReport.
// It returns a Future<String> implicitly because it's async and returns a String.
Future<String> getWeatherReport() async {
  print("Inside getWeatherReport: Simulating network delay...");
  // 2. Use Future.delayed for a 1-second delay.
  await Future.delayed(Duration(seconds: 1));

  print("Inside getWeatherReport: Delay finished. Returning report.");
  // 3. Return the fictional weather report string.
  return "Sunny, 25 degrees Celsius";
}

// 4. Make the main function async to use await inside it.
void main() async {
  // 6. Print a message before starting the asynchronous operation.
  print("Fetching weather report...");

  // 4. Call getWeatherReport and use await to pause execution until the Future completes.
  // The result (the String) is stored in the 'report' variable.
  String report = await getWeatherReport();

  // 5. & 6. Print the received weather report.
  print("Weather Report Received: $report");
  print("Program finished.");
}

/*
Expected Output (order of internal messages might vary slightly depending
 on event loop timing, but the overall sequence should be similar):

Fetching weather report...
Inside getWeatherReport: Simulating network delay...
Inside getWeatherReport: Delay finished. Returning report.  <-- This appears after ~1 second
Weather Report Received: Sunny, 25 degrees Celsius
Program finished.

*/
```