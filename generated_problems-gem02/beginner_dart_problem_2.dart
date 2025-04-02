Okay, here is a beginner Dart problem focused on `List<String>` manipulation, along with its solution.

---

**Problem Description**

**Goal:** Learn about Dart `List`s (specifically `List<String>`) and basic list operations.

**Scenario:** You're making a digital grocery list. You need to start with a few items, add a new item you forgot, remove an item you decided against, and update an item (maybe you want a specific type of bread).

**Tasks:**

1.  **Create a List:** Define a variable named `groceryList` and initialize it as a `List` of `String`s containing the items: "Milk", "Eggs", "Bread".
2.  **Print Initial List:** Print the `groceryList` to the console to see its initial state.
3.  **Add an Item:** Add the item "Apples" to the end of the `groceryList`.
4.  **Print After Adding:** Print the `groceryList` again to see the added item.
5.  **Remove an Item:** Remove the item "Eggs" from the `groceryList`.
6.  **Print After Removing:** Print the `groceryList` to show the item was removed.
7.  **Update an Item:** Find the item "Bread" and replace it with "Whole Wheat Bread". *Hint: You might need to find the index of "Bread" first.*
8.  **Print Final List:** Print the `groceryList` one last time to display the final version of your shopping list.

---

**Dart Solution Code**

```dart
void main() {
  // Task 1: Create a List
  // We declare a variable 'groceryList' and specify its type as List<String>.
  // We initialize it with three grocery items.
  List<String> groceryList = ["Milk", "Eggs", "Bread"];

  // Task 2: Print Initial List
  print("Initial Grocery List: $groceryList");
  // Expected Output: Initial Grocery List: [Milk, Eggs, Bread]

  print("---"); // Separator for clarity

  // Task 3: Add an Item
  // The .add() method adds an element to the end of the list.
  groceryList.add("Apples");

  // Task 4: Print After Adding
  print("List after adding Apples: $groceryList");
  // Expected Output: List after adding Apples: [Milk, Eggs, Bread, Apples]

  print("---"); // Separator for clarity

  // Task 5: Remove an Item
  // The .remove() method removes the first occurrence of the specified value.
  groceryList.remove("Eggs");

  // Task 6: Print After Removing
  print("List after removing Eggs: $groceryList");
  // Expected Output: List after removing Eggs: [Milk, Bread, Apples]

  print("---"); // Separator for clarity

  // Task 7: Update an Item
  // To update, we first find the index (position) of the item "Bread".
  int breadIndex = groceryList.indexOf("Bread");

  // Check if "Bread" was found (indexOf returns -1 if not found)
  if (breadIndex != -1) {
    // If found, we use the index to replace the item at that position.
    groceryList[breadIndex] = "Whole Wheat Bread";
  } else {
    print("Item 'Bread' not found in the list.");
  }

  // Task 8: Print Final List
  print("Final Grocery List: $groceryList");
  // Expected Output: Final Grocery List: [Milk, Whole Wheat Bread, Apples]
}
```

---