Okay, here is a beginner Dart problem focused on `List` and `String` data types, along with its solution.

---

## Problem Description

**Topic:** Variables and Data Types (List, String) - Grocery List Management

**Goal:** Create and manage a simple grocery list using a Dart `List`.

**Tasks:**

1.  **Create a List:** Declare an empty `List` that will hold `String` elements, representing your grocery items. Name it `groceryList`.
2.  **Add Items:** Add the following items to your `groceryList`: "Milk", "Eggs", "Bread".
3.  **Add Another Item:** Add "Apples" to the end of the list.
4.  **Remove an Item:** Remove "Eggs" from the list.
5.  **Update an Item:** Find "Bread" in the list and update it to "Whole Wheat Bread".
6.  **Print the List:** Print the final state of the `groceryList` to the console.

---

## Dart Solution

```dart
void main() {
  // 1. Create an empty List for grocery items (Strings)
  List<String> groceryList = [];
  print("Created empty list: $groceryList"); // Optional: Show initial state

  // 2. Add initial items
  groceryList.add("Milk");
  groceryList.add("Eggs");
  groceryList.add("Bread");
  print("After adding initial items: $groceryList"); // Optional: Show state

  // 3. Add another item
  groceryList.add("Apples");
  print("After adding Apples: $groceryList"); // Optional: Show state

  // 4. Remove an item
  // The remove() method removes the first occurrence of the specified value.
  groceryList.remove("Eggs");
  print("After removing Eggs: $groceryList"); // Optional: Show state

  // 5. Update an item ("Bread" to "Whole Wheat Bread")
  // First, find the index of "Bread"
  int breadIndex = groceryList.indexOf("Bread");

  // Check if "Bread" was found (indexOf returns -1 if not found)
  if (breadIndex != -1) {
    // Update the item at that index
    groceryList[breadIndex] = "Whole Wheat Bread";
  } else {
    print("Could not find 'Bread' to update."); // Good practice: handle not found case
  }
  print("After updating Bread: $groceryList"); // Optional: Show state

  // 6. Print the final list
  print("\n--- Final Grocery List ---");
  print(groceryList);

  // Optional: Print list items one by one for better readability
  print("\n--- Final Grocery List (Formatted) ---");
  if (groceryList.isEmpty) {
    print("The grocery list is empty.");
  } else {
    for (String item in groceryList) {
      print("- $item");
    }
  }
}
```

---