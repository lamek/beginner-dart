Okay, here is a beginner Dart problem focused on variables and basic data types, along with its solution.

---

**Problem Description**

**Topic:** Variables and Data Types (int, double, String, bool)
**Context:** User Profile

**Task:**

Create a Dart program that simulates storing basic user profile information. You need to:

1.  Declare a variable to store the user's name and assign it a `String` value (e.g., "Bob").
2.  Declare a variable to store the user's age and assign it an `int` value (e.g., 25).
3.  Declare a variable to store the user's height in meters and assign it a `double` value (e.g., 1.82).
4.  Declare a variable to indicate whether the user is a subscriber and assign it a `bool` value (e.g., `false`).
5.  Print each piece of information to the console. Each value should be on a new line and preceded by a descriptive label (e.g., "Name:", "Age:", etc.).

---

**Solution Code**

```dart
void main() {
  // 1. Declare and initialize the user's name (String)
  String userName = "Bob";

  // 2. Declare and initialize the user's age (int)
  int userAge = 25;

  // 3. Declare and initialize the user's height in meters (double)
  double userHeight = 1.82;

  // 4. Declare and initialize the subscriber status (bool)
  bool isSubscriber = false;

  // 5. Print each piece of information with a label
  print("User Profile Information:");
  print("-------------------------");
  print("Name: $userName");          // Using string interpolation to print the value
  print("Age: $userAge");
  print("Height: $userHeight meters"); // Added units for clarity
  print("Is Subscriber: $isSubscriber");
}
```

---