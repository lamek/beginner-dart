Okay, here is a beginner Dart problem focused on asynchronous programming with `Future.wait`, along with its solution.

---

**Problem Description**

**Title:** Simulate Parallel Service Calls

**Scenario:**
Imagine you are building a user profile screen. To display the complete profile, you need to fetch three pieces of information from different backend services (or simulated sources):
1.  The user's name.
2.  The user's favorite quote.
3.  The user's lucky number.

Each of these data fetches takes a different amount of time. Since they are independent, you want to fetch them *in parallel* to make your application feel faster. Once all three pieces of data have arrived, you want to display them together.

**Goal:**
Write a Dart program that simulates fetching these three pieces of data concurrently using `Future`s and `async`/`await`. Use `Future.wait` to wait for all fetches to complete, and then print the combined results.

**Requirements:**

1.  Create three separate asynchronous functions:
    *   `fetchUserName()`: Simulates fetching a name (e.g., "Alice"). It should take 1 second to complete and return a `Future<String>`.
    *   `fetchFavoriteQuote()`: Simulates fetching a quote (e.g., "Stay curious!"). It should take 2 seconds to complete and return a `Future<String>`.
    *   `fetchLuckyNumber()`: Simulates fetching a number (e.g., 42). It should take 1.5 seconds to complete and return a `Future<int>`.
    *   Use `Future.delayed` within each function to simulate the time delay. Add print statements inside these functions (e.g., "Fetching name...") to see when they start.
2.  In your `main` function:
    *   Call the three fetch functions *without* awaiting them individually yet. This starts the asynchronous operations.
    *   Store the returned `Future` objects in a list.
    *   Use `Future.wait` to wait for all the futures in the list to complete.
    *   `await` the result of `Future.wait`.
    *   The result of `Future.wait` will be a `List<dynamic>`. Extract the name, quote, and number from this list. Remember the order corresponds to the order of Futures in the list passed to `Future.wait`.
    *   Print a final message combining all the fetched data, like: "User Profile: Name: Alice, Quote: Stay curious!, Lucky Number: 42".
    *   Add print statements before starting the fetches and after displaying the result to see the overall program flow.

---

**Solution Code**

```dart
import 'dart:async';

// Simulates fetching the user's name after a delay
Future<String> fetchUserName() async {
  print("Fetching name...");
  await Future.delayed(const Duration(seconds: 1));
  print("Name fetched!");
  return "Alice";
}

// Simulates fetching the user's favorite quote after a delay
Future<String> fetchFavoriteQuote() async {
  print("Fetching quote...");
  await Future.delayed(const Duration(seconds: 2));
  print("Quote fetched!");
  return "Stay curious!";
}

// Simulates fetching the user's lucky number after a delay
Future<int> fetchLuckyNumber() async {
  print("Fetching lucky number...");
  // Using milliseconds for a slightly different delay duration
  await Future.delayed(const Duration(milliseconds: 1500)); 
  print("Lucky number fetched!");
  return 42;
}

Future<void> main() async {
  print("Starting parallel fetches...");

  // Start all asynchronous operations without awaiting them individually.
  // This allows them to run concurrently.
  Future<String> nameFuture = fetchUserName();
  Future<String> quoteFuture = fetchFavoriteQuote();
  Future<int> numberFuture = fetchLuckyNumber();

  // Create a list of the Futures.
  List<Future<dynamic>> futures = [nameFuture, quoteFuture, numberFuture];

  try {
    // Use Future.wait to wait for all futures in the list to complete.
    // The result is a list containing the results of each future,
    // in the same order as the futures list.
    print("Waiting for all results...");
    List<dynamic> results = await Future.wait(futures);

    // Ensure we got the expected number of results
    if (results.length == 3) {
      // Extract results based on the order they were added to the list.
      // Note: results list is List<dynamic>, so casting might be needed
      // for type safety in more complex scenarios, but direct access works here.
      String name = results[0] as String; 
      String quote = results[1] as String;
      int number = results[2] as int;

      // Print the combined profile information.
      print("\n--- User Profile ---");
      print("Name: $name");
      print("Quote: $quote");
      print("Lucky Number: $number");
      print("--------------------");

    } else {
       print("Error: Did not receive all expected results.");
    }

  } catch (error) {
    // Handle potential errors if any of the futures complete with an error
    print("An error occurred during fetching: $error");
  }

  print("\nAll fetches complete and results displayed.");
}
```

**Explanation:**

1.  **Asynchronous Functions:** `fetchUserName`, `fetchFavoriteQuote`, and `fetchLuckyNumber` are marked `async`. They use `await Future.delayed` to pause *their own* execution, simulating work without blocking the main thread. They return `Future`s representing the eventual result.
2.  **Starting Tasks:** In `main`, calling the fetch functions *without* `await` immediately starts their execution. The `Future` objects representing their pending completion are stored.
3.  **`Future.wait`:** `Future.wait(futures)` takes the list of `Future` objects. It returns a *single* `Future` that completes only when *all* the futures in the input list have completed successfully. If any future in the list completes with an error, the `Future` returned by `Future.wait` also completes with that error.
4.  **`await`ing `Future.wait`:** `await Future.wait(futures)` pauses the execution of `main` until all the parallel tasks are finished.
5.  **Processing Results:** The value returned by `await Future.wait(futures)` is a `List<dynamic>` containing the results from the completed futures, in the order they were provided in the `futures` list. We access the elements by index (e.g., `results[0]`) to get the name, quote, and number.
6.  **Parallelism:** Notice from the print output when you run this code that the "Fetching..." messages appear quickly one after another, indicating the tasks start close together. The "fetched!" messages will appear based on their respective delays (name after 1s, number after 1.5s, quote after 2s). The final profile is printed only after the longest task (fetching the quote) completes, demonstrating that `Future.wait` indeed waits for all of them.