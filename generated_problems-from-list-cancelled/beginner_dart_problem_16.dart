Okay, here is a beginner Dart problem focusing on functions with parameters and the corresponding solution.

---

### Problem Description

**Topic:** Dart Functions (Parameters, `void` return)

**Goal:** Create and use a simple greeting function.

**Task:**

1.  **Define a function** named `greetUser`.
2.  This function should accept one parameter: a `String` called `name`.
3.  Inside the function, it should print a personalized greeting to the console. The greeting should follow the format: `"Hello, [name]!"`, where `[name]` is the value of the `name` parameter passed to the function.
4.  In your `main` function, **call the `greetUser` function** at least three times, passing a different name (e.g., "Alice", "Bob", "Charlie") each time.

**Example Expected Output (for names "Alice", "Bob", "Charlie"):**

```
Hello, Alice!
Hello, Bob!
Hello, Charlie!
```

---

### Solution Code

```dart
// Define the greetUser function
// It takes one String parameter named 'name'.
// It doesn't return any value (implicitly void).
void greetUser(String name) {
  // Print the personalized greeting using string interpolation.
  print("Hello, $name!");
}

// The main function - the entry point of the Dart program.
void main() {
  // Call the greetUser function multiple times with different names.
  print("Calling the greetUser function:");
  greetUser("Alice");
  greetUser("Bob");
  greetUser("Charlie");
  greetUser("Dev"); // Added one more example call
}
```

**Explanation:**

1.  **`void greetUser(String name)`**: This line defines the function.
    *   `void` indicates that the function does not return any value.
    *   `greetUser` is the name of the function.
    *   `(String name)` declares that the function accepts one parameter named `name`, which must be a `String`.
2.  **`print("Hello, $name!");`**: This is the function body. It uses the `print()` function to output text to the console. String interpolation (`$name`) is used to insert the value of the `name` parameter directly into the string.
3.  **`void main()`**: This is the standard entry point for Dart applications. Execution begins here.
4.  **`greetUser("Alice");`**, **`greetUser("Bob");`**, etc.: These lines *call* the `greetUser` function, passing the string values "Alice", "Bob", etc., as the argument for the `name` parameter. Each call executes the code inside the `greetUser` function with the specific name provided.