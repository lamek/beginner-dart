Okay, here is a beginner Dart problem focused on asynchronous programming using `Future`, `async`, and `await` to simulate an API request.

---

**Problem Description**

**Scenario:**
Imagine you need to fetch user data from a remote server. This operation takes some time (like a real network request). You need to write a Dart program that simulates this request, waits for the data, and then prints it to the console.

**Tasks:**

1.  **Create a Simulation Function:**
    *   Define a function named `fetchUserData` that returns a `Future<String>`.
    *   Inside this function, use `Future.delayed` to simulate a network delay of 2 seconds.
    *   After the delay, the function should complete its `Future` with the string value: `"User Data: Alice (ID: 42)"`.

2.  **Call the Function and Handle the Result:**
    *   In your `main` function:
        *   Mark `main` as `async`.
        *   Print a message like "Fetching user data..." *before* calling `fetchUserData`.
        *   Call the `fetchUserData` function and use `await` to wait for the `Future` to complete.
        *   Store the result (the string) in a variable.
        *   Print the fetched user data to the console.
        *   Print a message like "Data fetch complete." *after* the data has been printed.

**Expected Output:**

```
Fetching user data...
// (Pause for approximately 2 seconds)
User Data: Alice (ID: 42)
Data fetch complete.
```

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future and Duration

// 1. Create a Simulation Function
// This function simulates fetching data from an API.
// It returns a Future that will complete with a String after a delay.
Future<String> fetchUserData() async {
  // Simulate network delay using Future.delayed
  // It waits for 2 seconds before executing the code after 'await'.
  await Future.delayed(Duration(seconds: 2));

  // After the delay, return the simulated user data.
  // This string is the value the Future will complete with.
  return "User Data: Alice (ID: 42)";
}

// 2. Call the Function and Handle the Result in main
// The main function needs to be marked 'async' to use 'await'.
void main() async {
  // Print a message before starting the asynchronous operation.
  print("Fetching user data...");

  // Use 'await' to pause the execution of 'main' until
  // the Future returned by fetchUserData() completes.
  // The completed value ("User Data: Alice (ID: 42)") is stored in 'userData'.
  String userData = await fetchUserData();

  // Once the Future completes and 'await' unpauses, print the fetched data.
  print(userData);

  // Print a final message indicating the process is done.
  print("Data fetch complete.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library for using `Future` and `Duration`.
2.  **`Future<String> fetchUserData() async { ... }`**:
    *   `Future<String>`: Declares that the function returns a `Future` which will eventually contain a `String`.
    *   `async`: Marks the function as asynchronous, allowing the use of `await` inside it.
    *   `await Future.delayed(Duration(seconds: 2));`: This pauses the execution *inside* `fetchUserData` for 2 seconds. It simulates waiting for a network response.
    *   `return "User Data: Alice (ID: 42)";`: Once the delay is over, this string becomes the result of the `Future`.
3.  **`void main() async { ... }`**:
    *   `async`: Marks the `main` function as asynchronous, which is required to use `await` directly within it.
    *   `print("Fetching user data...");`: Standard synchronous print statement.
    *   `String userData = await fetchUserData();`: This is the core of the asynchronous handling.
        *   `fetchUserData()` is called, and it immediately returns an *incomplete* `Future`.
        *   `await` pauses the execution of the `main` function *at this line* until the `Future` returned by `fetchUserData` completes. Dart's event loop can perform other tasks during this pause.
        *   Once the `Future` completes (after the 2-second delay), `await` gets the result (`"User Data: Alice (ID: 42)"`) and assigns it to the `userData` variable. Execution of `main` then resumes.
    *   `print(userData);`: Prints the data received from the `Future`.
    *   `print("Data fetch complete.");`: Another synchronous print statement.