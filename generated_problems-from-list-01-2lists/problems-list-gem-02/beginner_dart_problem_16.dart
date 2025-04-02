Okay, here is a beginner Dart problem focusing on functions, parameters, and printing, along with its solution.

---

**Problem Description**

**Title:** Simple Greeting Function

**Objective:** Your task is to create a simple Dart function that greets a person by name.

**Requirements:**

1.  Define a function named `printGreeting`.
2.  This function should accept one parameter: a `String` representing the person's `name`.
3.  Inside the function, it should print a personalized greeting to the console in the format: `Hello, [name]!` (where `[name]` is the value passed to the function).
4.  After defining the function, call it from your `main` function with a sample name (e.g., "Alice" or your own name) to demonstrate that it works.

---

**Solution Code**

```dart
// Define the function printGreeting
// It takes one parameter: a String called 'name'.
// It doesn't return any value (void).
void printGreeting(String name) {
  // Use string interpolation ($) to insert the name into the greeting string.
  print("Hello, $name!");
}

// The main function is the entry point of the Dart program.
void main() {
  // Call the printGreeting function with the name "Alice".
  printGreeting("Alice");

  // Call the printGreeting function with another name, "Bob".
  printGreeting("Bob");

  // Call the printGreeting function with your own name (optional).
  // printGreeting("Your Name");
}

/*
Expected Output:
Hello, Alice!
Hello, Bob!
*/
```