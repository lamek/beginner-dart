Okay, here is a beginner Dart problem focusing on variables and basic data types, along with its solution.

---

**Problem Description**

**Title:** My Personal Profile

**Objective:** Create a simple Dart program that stores and displays basic personal information using variables of different data types.

**Task:**
1.  Declare variables to store the following information:
    *   Your Name (use a `String`)
    *   Your Age (use an `int`)
    *   Your Height in meters (use a `double`, e.g., 1.75)
    *   Your Favorite Color (use a `String`)
    *   Number of Siblings you have (use an `int`)
    *   Whether you like pizza (use a `bool` - `true` if you do, `false` if you don't)
2.  Assign appropriate values to each variable.
3.  Print the stored information to the console. The output should be clearly labelled and easy to read. Use string interpolation (`$variableName`) to format the output.

**Example Output Format:**

```
--- My Personal Profile ---
Name: [Your Name]
Age: [Your Age] years old
Height: [Your Height] meters
Favorite Color: [Your Favorite Color]
Number of Siblings: [Number of Siblings]
Likes Pizza?: [true/false]
-------------------------
```

---

**Solution Code**

```dart
void main() {
  // 1. Declare variables and 2. Assign values
  String name = "Alice Wonderland";
  int age = 30;
  double height = 1.65; // Height in meters
  String favoriteColor = "Blue";
  int numberOfSiblings = 2;
  bool likesPizza = true;

  // 3. Print the information in a formatted way
  print("--- My Personal Profile ---");
  print("Name: $name");
  print("Age: $age years old");
  print("Height: $height meters");
  print("Favorite Color: $favoriteColor");
  print("Number of Siblings: $numberOfSiblings");
  print("Likes Pizza?: $likesPizza");
  print("-------------------------");
}
```

---