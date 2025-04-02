Okay, here is a beginner-level Dart problem focusing on asynchronous programming with `Future`, `async`, and `await`, simulating a file download.

---

**Problem Description**

**Title:** Simulate a File Download with Progress

**Goal:** Write a Dart function that simulates downloading a file asynchronously. The function should print progress messages to the console at different stages of the "download".

**Requirements:**

1.  Create an asynchronous function named `downloadFile` that accepts a `String` representing the filename.
2.  The function should return a `Future<String>` which resolves to a completion message like "`filename` downloaded successfully."
3.  Inside the function:
    *   Immediately print: "Starting download for `filename`..."
    *   Wait for 2 seconds (simulate download time). Use `Future.delayed`.
    *   Print: "`filename` - 50% complete"
    *   Wait for another 2 seconds (simulate more download time).
    *   Print: "`filename` - Download complete!"
    *   Finally, return the completion message: "`filename` downloaded successfully."
4.  In your `main` function:
    *   Call the `downloadFile` function with a sample filename (e.g., "data.txt").
    *   Use `await` to wait for the download simulation to complete.
    *   Print the completion message returned by the `downloadFile` function.
    *   Add a print statement *before* calling `downloadFile` and *after* receiving its result to demonstrate that the `main` function waits.

**Concepts to Use:**
*   `Future`
*   `async`
*   `await`
*   `Future.delayed`
*   `print()`

---

**Solution Code**

```dart
import 'dart:async'; // Required for Future and Duration

// Asynchronous function to simulate file download
Future<String> downloadFile(String filename) async {
  print("Starting download for $filename..."); // Initial message

  // Simulate the first half of the download (2 seconds delay)
  await Future.delayed(Duration(seconds: 2));

  print("$filename - 50% complete"); // Progress message

  // Simulate the second half of the download (another 2 seconds delay)
  await Future.delayed(Duration(seconds: 2));

  print("$filename - Download complete!"); // Final progress message

  // Return a completion message once the Future resolves
  return "$filename downloaded successfully.";
}

// Main function to run the simulation
void main() async {
  print("Main: Initiating file download...");

  // Call the asynchronous function and wait for its completion
  String result = await downloadFile("data.txt");

  // Print the result received from the completed Future
  print("Main: $result");

  print("Main: All operations finished.");
}
```

**Explanation:**

1.  **`import 'dart:async';`**: This line imports the necessary library for using `Future` and `Duration`.
2.  **`Future<String> downloadFile(String filename) async`**:
    *   `Future<String>`: Declares that the function will eventually return a `String`, but not immediately.
    *   `async`: Marks the function as asynchronous, allowing the use of `await` inside it.
3.  **`print(...)`**: Standard function to display output to the console.
4.  **`await Future.delayed(Duration(seconds: 2));`**:
    *   `Future.delayed()`: Creates a Future that completes after the specified duration.
    *   `Duration(seconds: 2)`: Specifies a duration of 2 seconds.
    *   `await`: Pauses the execution *within the `downloadFile` function* until the `Future.delayed` completes. It does *not* block the entire program.
5.  **`return "$filename downloaded successfully.";`**: Since the function is `async`, this `String` is automatically wrapped in a completed `Future<String>`.
6.  **`void main() async`**: The `main` function is also marked `async` so we can use `await` inside it to wait for `downloadFile` to finish.
7.  **`String result = await downloadFile("data.txt");`**: This line calls `downloadFile` and *pauses the execution of `main`* at this point until the `Future` returned by `downloadFile` completes. The resolved value (`String`) is then assigned to `result`.
8.  The print statements in `main` before and after the `await` show the flow of execution and how `await` makes the program wait for the asynchronous operation at that specific point.