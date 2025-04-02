Okay, here is a beginner Dart problem focusing on `Future.wait()` along with its solution.

---

**Problem Description**

**Title:** Fetching Concurrent Data

**Scenario:**
Imagine you need to fetch different pieces of information about a user from separate (simulated) network endpoints. Fetching the username takes 1 second, fetching the user's favourite colour takes 2 seconds, and fetching their lucky number takes 1.5 seconds. You want to fetch all this information concurrently to save time and then display it once all pieces have been received.

**Tasks:**

1.  **Create Asynchronous Functions:**
    *   Create a function `fetchUsername()` that returns a `Future<String>`. Inside the function, use `Future.delayed` to wait for 1 second, then return the string `"DartCoder"`.
    *   Create a function `fetchFavColor()` that returns a `Future<String>`. Inside the function, use `Future.delayed` to wait for 2 seconds, then return the string `"Blue"`.
    *   Create a function `fetchLuckyNumber()` that returns a `Future<int>`. Inside the function, use `Future.delayed` to wait for 1.5 seconds (1500 milliseconds), then return the number `42`.
    *   Remember to mark these functions with the `async` keyword.

2.  **Use `Future.wait()`:**
    *   In your `main` function (which should also be `async`), call the three functions you created. *Do not* `await` them individually yet.
    *   Store the `Future` objects returned by these function calls in a list.
    *   Use `Future.wait()` to wait for all the futures in the list to complete.
    *   Store the result of `Future.wait()` (which will be a `List<dynamic>` or `List<Object?>`) in a variable.

3.  **Print Results:**
    *   After `Future.wait()` completes, print the fetched data in a user-friendly format, like:
        ```
        Fetching data...
        Username: DartCoder
        Favorite Color: Blue
        Lucky Number: 42
        All data fetched!
        ```
    *   Make sure to access the results from the list returned by `Future.wait()` using the correct indices (0, 1, 2) and potentially casting them to their expected types.

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future.delayed

// Task 1: Create Asynchronous Functions

// Fetches username after 1 second
Future<String> fetchUsername() async {
  await Future.delayed(Duration(seconds: 1));
  return "DartCoder";
}

// Fetches favorite color after 2 seconds
Future<String> fetchFavColor() async {
  await Future.delayed(Duration(seconds: 2));
  return "Blue";
}

// Fetches lucky number after 1.5 seconds
Future<int> fetchLuckyNumber() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return 42;
}

// Task 2 & 3: Use Future.wait() and Print Results
void main() async {
  print("Fetching data...");

  // Start the operations concurrently, store the Futures
  Future<String> usernameFuture = fetchUsername();
  Future<String> colorFuture = fetchFavColor();
  Future<int> numberFuture = fetchLuckyNumber();

  // Create a list of the Futures
  List<Future> futures = [usernameFuture, colorFuture, numberFuture];

  // Wait for all Futures in the list to complete
  // The result is a List containing the results of each Future in order
  List<dynamic> results = await Future.wait(futures);

  // Extract results - remember the order matches the list above
  // Casting for type safety and clarity (optional but good practice)
  String username = results[0] as String;
  String favColor = results[1] as String;
  int luckyNumber = results[2] as int;

  // Print the fetched data
  print("Username: $username");
  print("Favorite Color: $favColor");
  print("Lucky Number: $luckyNumber");
  print("All data fetched!");

  // Note: The total time taken will be roughly equal to the longest
  // individual Future duration (around 2 seconds), not the sum (4.5 seconds),
  // because they run concurrently.
}
```

---