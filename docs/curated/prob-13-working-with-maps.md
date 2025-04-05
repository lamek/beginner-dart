---
date: 2025-04-05
title: Problem 13: Exploring Maps - Fruit Inventory
category: curated
difficulty: beginner
concepts: maps, data structures, key-value pairs, Map methods (containsKey, containsValue)
---

# Problem 13: Exploring Maps - Fruit Inventory

Let's dive into another fundamental Dart collection type: the **Map**. While Lists store ordered sequences of items, Maps store data as **key-value pairs**.

## Understanding Maps

Think of a `Map` like a dictionary or a lookup table. You have unique **keys**, and each key maps to a specific **value**. This is incredibly useful when you want to associate pieces of data together, like a word and its definition, a user ID and their profile information, or in our case, a fruit name and its quantity.

Key features of Dart Maps:

*   **Key-Value Pairs:** Each entry consists of a key and its associated value.
*   **Unique Keys:** Keys within a Map must be unique. If you add a new value with an existing key, it overwrites the previous value for that key.
*   **Efficient Lookup:** Maps are designed for fast retrieval of values based on their keys.

You typically define a Map by specifying the data types for its keys and values: `Map<KeyType, ValueType>`.

*   Example: `Map<String, int> scores = {};` creates an empty map where keys are Strings and values are integers.
*   You can also use `var` and let Dart infer the type: `var scores = <String, int>{};` or `var scores = {'Alice': 100, 'Bob': 90};`.

## The Exercise

**Task:**

Imagine you're keeping track of fruits in your pantry. Write a Dart program that uses a `Map` to store this information.

1.  Create an empty `Map` called `fruitInventory` where the keys are `String` (fruit names) and the values are `int` (quantities).
2.  Add the following fruits and their quantities to the `fruitInventory`:
    *   "Apples": 5
    *   "Bananas": 10
    *   "Oranges": 3
3.  Access and print the quantity of "Bananas" from the map.
4.  Check if the map contains the key "Grapes". Print a message indicating whether "Grapes" are in the inventory or not.
5.  Check if the map contains the value `5`. Print a message indicating whether any fruit has a quantity of 5.

**Example Output:**

```
Quantity of Bananas: 10
Are Grapes in inventory? false
Is there any fruit with quantity 5? true
```

## Ready to Code?

Create a new Dart file (e.g., `map_inventory.dart`) and implement the steps above.

Or, use DartPad with this starting code:

```dart
void main() {
  // 1. Create the empty Map here
  Map<String, int> fruitInventory = {};

  // 2. Add fruits and quantities here
  
  // 3. Access and print the quantity of Bananas

  // 4. Check for the key "Grapes" and print the result

  // 5. Check for the value 5 and print the result
}
```

## Need Some Hints?

*   Use curly braces `{}` to create a map literal, or use the `Map<KeyType, ValueType>()` constructor. For type inference with `var`, use `var mapName = <KeyType, ValueType>{};` for an empty map.
*   To add or update an entry: `mapName[key] = value;` (e.g., `fruitInventory['Apples'] = 5;`).
*   To access a value: `mapName[key]` (e.g., `fruitInventory['Bananas']`). Remember this can be `null` if the key doesn't exist! (We'll cover null safety more later, for now assume the key exists when accessing directly like in step 3).
*   To check if a key exists: use the `containsKey()` method (e.g., `fruitInventory.containsKey('Grapes')`). It returns `true` or `false`.
*   To check if a value exists: use the `containsValue()` method (e.g., `fruitInventory.containsValue(5)`). It returns `true` or `false`.
*   Use string interpolation with `print()` for formatted output: `print('Quantity of Bananas: ${fruitInventory['Bananas']}');`.

## Solution

[View the Solution](curated-solutions/cur-problem-13-solution.md)

## Further Practice

Practice makes perfect with Maps!

### More Exercises:

*   **Easy:** Create a map storing translations (e.g., English to Spanish: `{'hello': 'hola', 'world': 'mundo'}`). Print the Spanish translation for "hello".
*   **Medium:** Modify the `fruitInventory`: increase the quantity of "Apples" by 3, then remove "Oranges" from the map. Print the final state of the map. Use `remove()` method.
*   **Harder:** Create a map representing student scores (`String` name -> `int` score). Write code to iterate through the map and print each student's name and score. Then, calculate and print the average score. (Hint: look at `map.keys`, `map.values`, or `map.entries`).

### Explore More Problems:

Find more challenges involving collections in the [Collections (Lists, Maps, Sets) category](../categories/collections.md).