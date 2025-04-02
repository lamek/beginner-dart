Okay, here is a beginner Dart problem focusing on `List` manipulation, along with its solution.

---

## Problem Description

**Grocery List Manager**

You need to manage a grocery list using Dart. Your task is to:

1.  **Create:** Create an empty `List` that will hold `String` elements, representing grocery items. Call this list `groceryList`.
2.  **Initialize:** Add the following initial items to the `groceryList`: "Milk", "Sugar", "Flour".
3.  **Add:** Add a new item, "Eggs", to the *end* of the list.
4.  **Add Specific:** Add another item, "Butter", to the *beginning* of the list.
5.  **Remove:** Remove the item "Sugar" from the list.
6.  **Update:** Find the item "Flour" and update it to "Whole Wheat Flour".
7.  **Print:** Print the final state of the `groceryList` to the console.

**Hint:** You'll primarily use methods available for the `List` class like `add()`, `insert()`, `remove()`, and index access (`[]`) for updating. You might also need `indexOf()` to find the item before updating.

---

## Dart Solution

```dart
void main() {
  // 1. Create: Create an empty List of Strings
  List<String> groceryList = [];
  print("1. Created empty list: $groceryList");

  // 2. Initialize: Add initial items
  groceryList.add("Milk");
  groceryList.add("Sugar");
  groceryList.add("Flour");
  print("2. Initialized list: $groceryList");

  // 3. Add: Add "Eggs" to the end
  groceryList.add("Eggs");
  print("3. Added 'Eggs' to end: $groceryList");

  // 4. Add Specific: Add "Butter" to the beginning (index 0)
  groceryList.insert(0, "Butter");
  print("4. Added 'Butter' to beginning: $groceryList");

  // 5. Remove: Remove "Sugar"
  // The remove() method returns true if the item was found and removed, false otherwise.
  bool removed = groceryList.remove("Sugar");
  if (removed) {
    print("5. Removed 'Sugar': $groceryList");
  } else {
    print("5. 'Sugar' not found in the list.");
  }

  // 6. Update: Change "Flour" to "Whole Wheat Flour"
  // First, find the index of "Flour"
  int flourIndex = groceryList.indexOf("Flour");

  // Check if "Flour" was found (indexOf returns -1 if not found)
  if (flourIndex != -1) {
    // Update the item at that index
    groceryList[flourIndex] = "Whole Wheat Flour";
    print("6. Updated 'Flour': $groceryList");
  } else {
    print("6. 'Flour' not found for updating.");
  }

  // 7. Print: Print the final list
  print("\n-- Final Grocery List --");
  print(groceryList);

  // Bonus: Iterate and print each item nicely
  print("\n-- Items in the Final List --");
  for (String item in groceryList) {
    print("- $item");
  }
}
```

---