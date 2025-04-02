Okay, here is a beginner Dart problem focused on variables and basic data types, along with its solution.

---

**Dart Problem: Basic User Profile**

**Description:**

Your task is to create a simple Dart program that stores basic information about a user using different variable types and then prints this information to the console.

**Requirements:**

1.  Declare a variable named `userName` of type `String` and assign it a fictional user's name (e.g., "Bob").
2.  Declare a variable named `userAge` of type `int` and assign it a fictional age (e.g., 30).
3.  Declare a variable named `userHeight` of type `double` and assign it a fictional height in meters (e.g., 1.82).
4.  Declare a variable named `isStudent` of type `bool` and assign it a boolean value (`true` or `false`) indicating whether the user is a student.
5.  Print each piece of information to the console, clearly labeling what each value represents.

**Example Output:**

```
--- User Information ---
Name: Bob
Age: 30
Height: 1.82 meters
Is Student: false
```

---

**Dart Solution:**

```dart
void main() {
  // 1. Declare a String variable for the user's name
  String userName = "Bob";

  // 2. Declare an int variable for the user's age
  int userAge = 30;

  // 3. Declare a double variable for the user's height
  double userHeight = 1.82;

  // 4. Declare a bool variable for the student status
  bool isStudent = false;

  // 5. Print the stored information in a readable format
  print("--- User Information ---");
  print("Name: $userName"); // Using string interpolation
  print("Age: $userAge");
  print("Height: $userHeight meters");
  print("Is Student: $isStudent");
}
```

**Explanation:**

1.  `void main() { ... }`: This is the entry point of every Dart program.
2.  `String userName = "Bob";`: Declares a variable `userName` that can hold text (`String`) and assigns it the value "Bob".
3.  `int userAge = 30;`: Declares a variable `userAge` that can hold whole numbers (`int`) and assigns it the value 30.
4.  `double userHeight = 1.82;`: Declares a variable `userHeight` that can hold decimal numbers (`double`) and assigns it the value 1.82.
5.  `bool isStudent = false;`: Declares a variable `isStudent` that can hold either `true` or `false` (`bool`) and assigns it the value `false`.
6.  `print(...)`: This function outputs text to the console.
7.  `$variableName`: This syntax inside a string (called string interpolation) allows you to easily embed the value of a variable directly into the string.