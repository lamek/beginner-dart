---
date: 2025-04-05
title: Problem 12: Working with Lists - Your Favorite Fruits
category: curated
difficulty: beginner
concepts: lists, List<T>, add, access by index, iteration, for-in loop, length
---

# Problem 12: Working with Lists - Your Favorite Fruits

Lists are fundamental in programming for storing collections of items. In Dart, a `List` is an ordered group of objects. Think of it like a shopping list or a list of your favorite songs – the order matters!

## Understanding Lists

A `List` in Dart holds multiple values in a single variable. Key characteristics include:

*   **Ordered:** Elements are stored in a specific sequence.
*   **Indexed:** You can access elements using their position (index), starting from 0.
*   **Dynamic Size:** You can add or remove elements, changing the list's size.
*   **Typed (Usually):** You typically specify the type of elements the list can hold (e.g., `List<String>` for strings, `List<int>` for integers).

**Common Operations:**

*   **Creating a List:** `List<String> myShoppingList = [];` or `var myNumbers = <int>[1, 2, 3];`
*   **Adding Elements:** Use the `.add()` method: `myShoppingList.add("Milk");`
*   **Accessing Elements:** Use square brackets `[]` with the index (remembering the first element is at index 0): `String firstItem = myShoppingList[0];`
*   **Getting the Length:** Use the `.length` property: `int numberOfItems = myShoppingList.length;`
*   **Iterating (Looping):** Use a `for-in` loop to process each element: `for (String item in myShoppingList) { print(item); }`

## The Exercise

**Task:**

Let's create a list of your favorite fruits!

1.  Create an empty list that can hold `String` values. Name it `favoriteFruits`.
2.  Add at least three of your favorite fruits to the list using the `.add()` method (e.g., "Apple", "Banana", "Mango").
3.  Access and print the *second* fruit in your list. Remember that list indices start at 0.
4.  Print the total number of fruits currently in your list using the `.length` property.
5.  Use a `for-in` loop to iterate through your `favoriteFruits` list. Inside the loop, print each fruit preceded by the text "I like ".

**Example Output (if you added "Apple", "Banana", "Mango" in that order):**

```
My second favorite fruit is: Banana
I have 3 favorite fruits.
I like Apple
I like Banana
I like Mango
```

## Ready to Code?

Create a new Dart file (e.g., `fruit_list.dart`) and implement the steps above.

Or, use DartPad with this boilerplate:

```dart
void main() {
  // 1. Create an empty list of strings called favoriteFruits

  // 2. Add at least three fruits to the list

  // 3. Access and print the second fruit (index 1)

  // 4. Print the number of fruits in the list

  // 5. Use a for-in loop to print each fruit with "I like "
}
```

## Need Some Hints?

*   To create an empty list for strings: `List<String> favoriteFruits = [];`
*   Adding an item: `favoriteFruits.add("YourFruitName");`
*   Accessing the second item (at index 1): `favoriteFruits[1]`
*   Getting the list size: `favoriteFruits.length`
*   The structure for a `for-in` loop: `for (String fruit in favoriteFruits) { ... }`
*   Combine text and variables for printing using string interpolation: `print("Text: $variable");` or concatenation `print("Text: " + variable);`

## Solution

[View the Solution](curated-solutions/cur-problem-12-solution.md)

## Further Practice

Want to explore lists more?

### More Exercises:

*   **Easy:** Modify your `favoriteFruits` list. Try removing one fruit using `.remove("FruitName")` and then add a different fruit. Print the final list.
*   **Medium:** Create a `List<int>` called `scores` with several numbers. Use a `for-in` loop to calculate the sum of all the scores in the list and print the total sum.
*   **Harder:** Create a list of strings representing tasks (`List<String> tasks`). Use a `for-in` loop with an index (you might need a traditional `for` loop: `for(int i = 0; i < tasks.length; i++)`) to print each task with its number (e.g., "1. Do laundry", "2. Buy groceries").

### Explore More Problems:

You can find more problems related to collections in the [Lists category](../categories/lists.md).