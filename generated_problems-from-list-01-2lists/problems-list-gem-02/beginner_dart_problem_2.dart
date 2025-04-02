Okay, here is a beginner Dart problem focused on variables and basic data types for a user profile, along with its solution.

--- Problem Description ---

**Dart Beginner Problem: User Profile Variables**

**Objective:** Practice declaring variables with different basic data types (`String`, `int`, `double`, `bool`) and printing their values.

**Task:**

1.  **Declare Variables:** Create variables to store the following information for a hypothetical user:
    *   `userName`: The user's name (use a `String`). Assign it a sample name like "Bob".
    *   `userAge`: The user's age (use an `int`). Assign it a sample age like 25.
    *   `userHeight`: The user's height in meters (use a `double`). Assign it a sample height like 1.82.
    *   `isSubscriber`: A boolean indicating if the user is a subscriber (`true` or `false`). Assign it a sample value like `true`.

2.  **Print Information:** Print each piece of stored information to the console. Each value should be on a new line and preceded by a descriptive label (e.g., "Name:", "Age:").

**Example Output:**

```
User Profile Details:
Name: Bob
Age: 25
Height: 1.82 meters
Is Subscriber: true
```

--- Dart Solution ---

```dart
void main() {
  // 1. Declare and Initialize Variables
  String userName = "Bob";
  int userAge = 25;
  double userHeight = 1.82; // Height in meters
  bool isSubscriber = true;

  // 2. Print Information with Labels
  print("User Profile Details:");
  print("Name: $userName");
  print("Age: $userAge");
  print("Height: $userHeight meters");
  print("Is Subscriber: $isSubscriber");
}
```

**Explanation:**

1.  The `main` function is the entry point of the Dart program.
2.  Inside `main`, we declare four variables:
    *   `userName` is declared using the `String` type and initialized with the value `"Bob"`.
    *   `userAge` is declared using the `int` type and initialized with the value `25`.
    *   `userHeight` is declared using the `double` type (for decimal numbers) and initialized with `1.82`.
    *   `isSubscriber` is declared using the `bool` type (for true/false values) and initialized with `true`.
3.  The `print()` function is used to output text to the console.
4.  We use string interpolation (the `$` sign before a variable name within a string) to easily embed the variable values within the descriptive labels before printing them.
5.  An extra `print()` statement is added at the beginning for a title, and units ("meters") are added to the height output for clarity.