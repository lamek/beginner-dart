Okay, here is a beginner Dart problem focusing on variables and basic data types, along with its solution.

---

**Problem Description**

**Topic:** Variables and Data Types (`int`, `double`, `String`, `bool`)

**Scenario:** Personal Profile

**Task:**
Your goal is to create a simple personal profile summary using Dart variables.

1.  Declare a variable named `fullName` of type `String` and assign it your full name.
2.  Declare a variable named `age` of type `int` and assign it your age.
3.  Declare a variable named `heightInMeters` of type `double` and assign it your height in meters (e.g., 1.75).
4.  Declare a variable named `isStudent` of type `bool` and set it to `true` if you are currently a student, or `false` otherwise.
5.  Print a single summary sentence to the console that combines all these pieces of information using string interpolation. The sentence should look like this:
    `"Name: [Your Name], Age: [Your Age], Height: [Your Height]m, Student Status: [True/False]"`

---

**Solution Code**

```dart
void main() {
  // 1. Declare and initialize the name variable (String)
  String fullName = "Alex Doe"; 

  // 2. Declare and initialize the age variable (int)
  int age = 22;

  // 3. Declare and initialize the height variable (double)
  double heightInMeters = 1.80;

  // 4. Declare and initialize the student status variable (bool)
  bool isStudent = true;

  // 5. Print the summary sentence using string interpolation
  print("Name: $fullName, Age: $age, Height: ${heightInMeters}m, Student Status: $isStudent"); 
}
```

**Explanation:**

1.  `void main() { ... }`: This is the entry point for every Dart application.
2.  `String fullName = "Alex Doe";`: Declares a variable `fullName` of type `String` and assigns the text "Alex Doe" to it.
3.  `int age = 22;`: Declares a variable `age` of type `int` (integer/whole number) and assigns the value `22`.
4.  `double heightInMeters = 1.80;`: Declares a variable `heightInMeters` of type `double` (number with a decimal point) and assigns the value `1.80`.
5.  `bool isStudent = true;`: Declares a variable `isStudent` of type `bool` (boolean - can only be `true` or `false`) and assigns the value `true`.
6.  `print(...)`: This function outputs text to the console.
7.  `"Name: $fullName, ..."`: This is a string literal using *interpolation*. The `$` symbol followed by a variable name (`$fullName`, `$age`, `$isStudent`) inserts the variable's value directly into the string. When you need to include units or access properties (though not needed here), you can use curly braces: `${heightInMeters}m`. This ensures the 'm' is treated as part of the string literal and not part of the variable name.