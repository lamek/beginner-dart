Okay, here is a beginner Dart problem and its solution based on your description.

---

## Problem Description

**Topic:** Variables, String Data Type, Basic String Concatenation

**Task:**

Your goal is to practice declaring String variables and combining them.

1.  Declare a `String` variable named `firstName` and assign it the value "Marie".
2.  Declare another `String` variable named `lastName` and assign it the value "Curie".
3.  Create a third `String` variable named `fullName`.
4.  Combine the `firstName`, a single space character (" "), and the `lastName` together in that order, and assign the result to the `fullName` variable.
5.  Print the value stored in the `fullName` variable to the console.

**Expected Output:**

```
Marie Curie
```

---

## Dart Solution

```dart
void main() {
  // 1. Declare a String variable for the first name.
  String firstName = "Marie";

  // 2. Declare a String variable for the last name.
  String lastName = "Curie";

  // 3. Declare a String variable for the full name.
  // 4. Concatenate firstName, a space, and lastName, then assign to fullName.
  String fullName = firstName + " " + lastName;

  // 5. Print the full name to the console.
  print(fullName); 
}
```

---