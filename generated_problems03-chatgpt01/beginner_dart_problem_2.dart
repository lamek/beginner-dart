Okay, here is a beginner Dart problem focusing on `List<String>` for managing a shopping list, along with its solution.

--- Problem Description ---

**Dart Problem: Simple Shopping List**

**Objective:** Learn how to declare, initialize, and iterate over a `List` of `String`s in Dart.

**Task:**

1.  **Declare a Variable:** Create a variable named `shoppingList`.
2.  **Initialize the List:** Initialize `shoppingList` with a `List<String>` containing exactly five grocery items (e.g., "Milk", "Bread", "Eggs", "Apples", "Cheese").
3.  **Print the Items:** Write code to iterate through the `shoppingList` and print each grocery item to the console. Each item should appear on a new line.

--- Solution Code ---

```dart
void main() {
  // 1. Declare a variable named shoppingList.
  // 2. Initialize it as a List<String> with five grocery items.
  List<String> shoppingList = [
    'Milk',
    'Bread',
    'Eggs',
    'Apples',
    'Cheese'
  ];

  // Print a heading for clarity
  print("My Shopping List:");
  print("----------------");

  // 3. Iterate through the shoppingList and print each item.
  // The 'for-in' loop is a common way to iterate over collections in Dart.
  for (String item in shoppingList) {
    // The print() function automatically adds a newline character at the end.
    print(item);
  }

  print("----------------");
  print("End of list.");
}

/*
Expected Output:

My Shopping List:
----------------
Milk
Bread
Eggs
Apples
Cheese
----------------
End of list.

*/
```