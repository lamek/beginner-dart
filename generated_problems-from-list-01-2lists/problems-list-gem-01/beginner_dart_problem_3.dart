Okay, here is a beginner Dart problem based on your description, followed by its solution.

---

**Problem Description: Personal Profile Variables**

**Goal:** Create a Dart program that stores basic personal information using appropriate variable types and then prints a summary sentence.

**Requirements:**

1.  **Declare Variables:** Create variables to store the following information:
    *   Your name (use the `String` data type).
    *   Your age (use the `int` data type).
    *   Your height in meters (e.g., 1.75) (use the `double` data type).
    *   Whether you are currently a student (use the `bool` data type - `true` or `false`).
2.  **Assign Values:** Assign appropriate values to each of the variables you declared.
3.  **Print Summary:** Use the `print()` function and string interpolation (`$variableName`) to output a single sentence that includes all the stored information. For example: "My name is [Name], I am [Age] years old, [Height] meters tall, and it is [Student Status] that I am a student."

---

**Solution Code:**

```dart
void main() {
  // 1. Declare variables with appropriate data types and 2. Assign values
  String name = "Alex Doe";        // Variable to store the name (String)
  int age = 25;                   // Variable to store the age (int)
  double heightInMeters = 1.82;   // Variable to store height in meters (double)
  bool isStudent = false;         // Variable to store student status (bool)

  // 3. Print Summary using string interpolation
  // String interpolation uses the '$' symbol before a variable name
  // inside a string literal (single or double quotes) to embed its value.
  print("My name is $name, I am $age years old, $heightInMeters meters tall, and it is $isStudent that I am a student.");

  // Example with a different set of values:
  // String name = "Samantha Bee";
  // int age = 21;
  // double heightInMeters = 1.65;
  // bool isStudent = true;
  // print("My name is $name, I am $age years old, $heightInMeters meters tall, and it is $isStudent that I am a student.");
}
```