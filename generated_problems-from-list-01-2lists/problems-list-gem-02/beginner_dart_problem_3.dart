Okay, here is the Dart beginner problem and its solution.

---

**Problem Description**

**Title:** Favorite Hobbies List

**Concept:** Variables and Data Types (`List<String>`)

**Task:**

1.  Declare a variable named `favoriteHobbies` and initialize it as a `List<String>`.
2.  Add at least three of your favorite hobbies (as strings) to this list.
3.  Print the total number of hobbies currently in your list to the console.
4.  Access the second hobby in the list (remembering that list indices start at 0) and print it to the console, perhaps with a descriptive message like "My second favorite hobby is: [Hobby]".

---

**Solution Code**

```dart
void main() {
  // 1. Declare and initialize a List<String> for favorite hobbies.
  // 2. Add at least three hobbies.
  List<String> favoriteHobbies = ["Reading", "Coding", "Hiking", "Gaming"];

  // 3. Print the number of hobbies in the list.
  // We use the .length property of the list.
  print("Number of hobbies: ${favoriteHobbies.length}");

  // 4. Access and print the second hobby (at index 1).
  // List indices start at 0, so the second item is at index 1.
  String secondHobby = favoriteHobbies[1];
  print("My second favorite hobby is: $secondHobby");

  // You could also access it directly within the print statement:
  // print("My second favorite hobby is: ${favoriteHobbies[1]}");
}
```

---