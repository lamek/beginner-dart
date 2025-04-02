Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Goal:** Create a simple Dart program that greets a user by name using a dedicated function.

**Requirements:**

1.  **Define a function:** Create a function named `generateGreeting`.
2.  **Parameter:** This function should accept one parameter:
    *   `name` (type `String`): The name of the person to greet.
3.  **Return Value:** The function should return a `String` containing a personalized greeting. The greeting format should be: "Hello, [name]! Welcome to Dart."
4.  **Main Function:** In your `main` function:
    *   Call the `generateGreeting` function with a sample name (e.g., "Alice").
    *   Store the returned greeting in a variable.
    *   Print the stored greeting to the console.

**Example Interaction:**

If you call the function with the name "Bob", it should return the string "Hello, Bob! Welcome to Dart.", and your `main` function should print this string.

---

**Solution Code**

```dart
// Function Definition:
// Takes a String 'name' as input (parameter)
// Returns a personalized String greeting (return value)
String generateGreeting(String name) {
  // Construct the greeting message using string interpolation
  String greeting = "Hello, $name! Welcome to Dart.";
  // Return the constructed greeting
  return greeting;
}

// Main function - the entry point of the program
void main() {
  // Define a sample name
  String userName = "Alice";

  // Call the generateGreeting function, passing userName as the argument
  // Store the returned value in the 'personalizedGreeting' variable
  String personalizedGreeting = generateGreeting(userName);

  // Print the greeting received from the function
  print(personalizedGreeting);

  // You can test with another name too:
  print(generateGreeting("Bob"));
}
```

---