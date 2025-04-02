Okay, here is a beginner Dart problem focused on `Future.wait` along with its solution.

---

**Problem Description**

**Title:** Fetching User Data Concurrently

**Scenario:** You are building a user profile screen in an application. To display the screen, you need to fetch both the user's profile details and their recent posts. These are separate operations that can happen independently and potentially take some time (like network requests). To speed up the loading process, you want to fetch both pieces of data concurrently.

**Task:**

1.  Create an asynchronous function `fetchUserProfile()` that:
    *   Simulates a network delay of 2 seconds using `Future.delayed`.
    *   Returns a `Future<String>` containing the text "User Profile Fetched".
    *   Prints a message like "Fetching user profile..." when it starts and "User profile fetched!" when it completes (before returning).
2.  Create another asynchronous function `fetchUserPosts()` that:
    *   Simulates a network delay of 3 seconds using `Future.delayed`.
    *   Returns a `Future<String>` containing the text "User Posts Fetched".
    *   Prints a message like "Fetching user posts..." when it starts and "User posts fetched!" when it completes (before returning).
3.  In the `main` function:
    *   Start both `fetchUserProfile()` and `fetchUserPosts()` operations.
    *   Use `Future.wait` to wait for *both* futures to complete concurrently.
    *   Once both futures have completed, print the results obtained from both functions.
    *   Include print statements to indicate when the main function starts waiting and when both operations are complete.

---

**Dart Solution**

```dart
import 'dart:async'; // Required for Future, async, await, Future.delayed, Duration

// Simulates fetching user profile data with a delay
Future<String> fetchUserProfile() async {
  print('Fetching user profile...');
  // Simulate network delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));
  print('User profile fetched!');
  return 'User Profile Fetched';
}

// Simulates fetching user posts data with a delay
Future<String> fetchUserPosts() async {
  print('Fetching user posts...');
  // Simulate network delay of 3 seconds
  await Future.delayed(Duration(seconds: 3));
  print('User posts fetched!');
  return 'User Posts Fetched';
}

// Main function to run the concurrent operations
Future<void> main() async {
  print('Starting concurrent data fetch...');

  // Start both operations - DO NOT await them individually here
  // We get the Future objects representing the ongoing operations
  Future<String> profileFuture = fetchUserProfile();
  Future<String> postsFuture = fetchUserPosts();

  // Create a list of the futures we want to wait for
  List<Future<String>> futures = [profileFuture, postsFuture];

  print('Waiting for both profile and posts futures to complete...');

  try {
    // Use Future.wait to run both futures concurrently and wait for all to finish
    // It returns a List containing the results of the futures in the same order.
    List<String> results = await Future.wait(futures);

    print('\nBoth operations completed successfully!');

    // Print the results obtained from the futures
    print('Result 1: ${results[0]}'); // Result from fetchUserProfile
    print('Result 2: ${results[1]}'); // Result from fetchUserPosts

  } catch (error) {
    // Handle potential errors if any future fails
    print('An error occurred while fetching data: $error');
  }

  print('\nMain function finished.');
}

/*
Expected Output Order (Note: Start messages appear first, then delays happen concurrently):

Starting concurrent data fetch...
Fetching user profile...
Fetching user posts...
Waiting for both profile and posts futures to complete...
(after ~2 seconds)
User profile fetched!
(after ~3 seconds from start)
User posts fetched!

Both operations completed successfully!
Result 1: User Profile Fetched
Result 2: User Posts Fetched

Main function finished.
*/
```

---