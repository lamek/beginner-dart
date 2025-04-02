Okay, here is a beginner Dart problem focusing on `Future.wait()` along with its solution.

---

### Problem Description: Asynchronous User Data Fetching

**Goal:** Simulate fetching different pieces of user data concurrently from various sources and display them only after all data has been retrieved.

**Scenario:**
Imagine you need to fetch a user's name, age, and favorite hobby. Each piece of data comes from a different asynchronous source (which we'll simulate using timed delays).

**Tasks:**

1.  **Create Asynchronous Functions:**
    *   Create a function `fetchUserName()` that simulates fetching a user's name. It should return a `Future<String>` that completes with the value `"Alice"` after a delay of 2 seconds.
    *   Create a function `fetchUserAge()` that simulates fetching a user's age. It should return a `Future<int>` that completes with the value `30` after a delay of 1 second.
    *   Create a function `fetchUserHobby()` that simulates fetching a user's hobby. It should return a `Future<String>` that completes with the value `"Reading"` after a delay of 3 seconds.
    *   Use `Future.delayed()` inside these functions to simulate the network/database latency. Use `async` and `await` within these functions as needed.

2.  **Wait for All Data:**
    *   In your `main` function (which should be marked `async`), call the three functions you created.
    *   Use `Future.wait()` to wait for all three futures to complete.

3.  **Display Results:**
    *   Once `Future.wait()` completes, retrieve the results (name, age, hobby) from the list it returns.
    *   Print a single message combining all the results, formatted like this:
        `User Profile: Name: Alice, Age: 30, Hobby: Reading`
    *   Also, print messages indicating the start and end of the data fetching process.

**Hint:** Remember that `Future.wait()` takes a list of `Future` objects and returns a `Future<List<dynamic>>` (or `Future<List<Object?>>`) containing the results in the same order as the input futures. You might need to cast the results to their expected types.

---

### Dart Solution Code:

```dart
import 'dart:async';

// Function to simulate fetching user name (takes 2 seconds)
Future<String> fetchUserName() async {
  print("Fetching user name...");
  await Future.delayed(const Duration(seconds: 2));
  print("User name fetched.");
  return "Alice";
}

// Function to simulate fetching user age (takes 1 second)
Future<int> fetchUserAge() async {
  print("Fetching user age...");
  await Future.delayed(const Duration(seconds: 1));
  print("User age fetched.");
  return 30;
}

// Function to simulate fetching user hobby (takes 3 seconds)
Future<String> fetchUserHobby() async {
  print("Fetching user hobby...");
  await Future.delayed(const Duration(seconds: 3));
  print("User hobby fetched.");
  return "Reading";
}

// Main function to orchestrate the fetching and display results
void main() async {
  print("Starting data fetch process...");

  // Start all fetch operations concurrently.
  // We get the Future objects but don't await them individually here.
  Future<String> nameFuture = fetchUserName();
  Future<int> ageFuture = fetchUserAge();
  Future<String> hobbyFuture = fetchUserHobby();

  // Create a list of the futures we want to wait for.
  List<Future> futures = [nameFuture, ageFuture, hobbyFuture];

  try {
    // Use Future.wait() to wait for all futures in the list to complete.
    // The result is a list containing the results of the futures in order.
    print("\nWaiting for all data to arrive using Future.wait()...");
    List<dynamic> results = await Future.wait(futures);
    print("All data has arrived!");

    // Extract results from the list.
    // Note: The results are in the same order as the futures list.
    // We cast them to their expected types.
    String name = results[0] as String;
    int age = results[1] as int;
    String hobby = results[2] as String;

    // Print the combined user profile information.
    print("\n--- User Profile ---");
    print("Name: $name");
    print("Age: $age");
    print("Hobby: $hobby");
    print("--------------------\n");

  } catch (error) {
    // Handle potential errors from any of the futures
    print("An error occurred during data fetching: $error");
  }

  print("Data fetch process complete.");
}
```

**Explanation:**

1.  **`fetchUserName`, `fetchUserAge`, `fetchUserHobby`:** These `async` functions use `await Future.delayed` to simulate work and return a `Future` of the specified type (`String` or `int`). Informative print statements show when each task starts and finishes.
2.  **`main` function:**
    *   It's marked `async` to allow the use of `await`.
    *   It calls the three fetch functions *without* `await` initially. This starts all three asynchronous operations concurrently. The variables (`nameFuture`, `ageFuture`, `hobbyFuture`) hold the `Future` objects, not the results yet.
    *   A `List<Future>` called `futures` is created, containing these `Future` objects.
    *   `await Future.wait(futures)` is the key part. Execution pauses here until *all* the futures in the `futures` list have completed successfully. If any future completes with an error, `Future.wait` immediately completes with that error.
    *   The result of `Future.wait` is a `List<dynamic>` (or `List<Object?>`) containing the resolved values from the futures, in the order they were provided in the input list (`[name, age, hobby]`).
    *   We access the results by index (`results[0]`, `results[1]`, `results[2]`) and cast them to their correct types (`String`, `int`, `String`) before printing the final profile.
    *   A `try-catch` block is included as good practice, although in this simple simulation, errors are unlikely unless deliberately introduced.