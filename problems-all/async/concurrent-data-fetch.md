---
title: Concurrent Data Fetching (with Future.wait)
category: Asynchronous Programming
difficulty: Beginner
focus:
  - Future
  - async / await
  - Future.wait
  - Future.delayed
  - List
  - Type Casting
---

# Concurrent Data Fetching with Future.wait

## Problem Description

Simulate fetching different pieces of user data concurrently from various sources and display them only after all data has been retrieved.

**Scenario:**
Imagine you need to fetch a user's name, age, and favorite hobby. Each piece of data comes from a different asynchronous source (which we'll simulate using timed delays).

## Requirements

1.  **Create Asynchronous Functions:**
    *   Create a function `fetchUserName()` that simulates fetching a user's name. It should return a `Future<String>` that completes with the value `"Alice"` after a delay of 2 seconds.
    *   Create a function `fetchUserAge()` that simulates fetching a user's age. It should return a `Future<int>` that completes with the value `30` after a delay of 1 second.
    *   Create a function `fetchUserHobby()` that simulates fetching a user's hobby. It should return a `Future<String>` that completes with the value `"Reading"` after a delay of 3 seconds.
    *   Use `Future.delayed()` inside these functions to simulate the network/database latency. Use `async` and `await` within these functions as needed. Add print statements to indicate when each fetch starts and finishes.

2.  **Wait for All Data:**
    *   In your `main` function (which should be marked `async`), call the three functions you created *without* awaiting them individually to start them concurrently.
    *   Use `Future.wait()` to wait for all three futures to complete. Print a message indicating that the program is waiting.

3.  **Display Results:**
    *   Once `Future.wait()` completes, retrieve the results (name, age, hobby) from the list it returns.
    *   Print a single message combining all the results, formatted like this:
        `--- User Profile ---`
        `Name: Alice`
        `Age: 30`
        `Hobby: Reading`
        `--------------------`
    *   Also, print messages indicating the overall start and end of the data fetching process. Include basic error handling using `try-catch` around the `Future.wait()` call.

**Hint:** Remember that `Future.wait()` takes a list of `Future` objects and returns a `Future<List<dynamic>>` (or `Future<List<Object?>>`) containing the results in the same order as the input futures. You will likely need to cast the results from the list to their expected types (`String`, `int`).

## Focus

This problem focuses on:

*   Understanding and using `Future` for asynchronous operations.
*   Writing `async` functions and using the `await` keyword.
*   Simulating delays using `Future.delayed`.
*   Using `Future.wait()` to run multiple `Future`s concurrently and await their collective completion.
*   Working with `List<Future>` and `List<dynamic>` (or `List<Object?>`).
*   Performing type casting (`as`) to retrieve typed results from the list returned by `Future.wait`.
*   Basic asynchronous flow control in the `main` function.
*   Basic error handling for futures using `try-catch`.

## Example Solution Code

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