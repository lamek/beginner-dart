## Solution: Problem 13 - Exploring Maps

```dart
void main() {
  // 1. Create the empty Map here
  Map<String, int> fruitInventory = {};

  // 2. Add fruits and quantities here
  fruitInventory['Apples'] = 5;
  fruitInventory['Bananas'] = 10;
  fruitInventory['Oranges'] = 3;

  // 3. Access and print the quantity of Bananas
  int? bananaQuantity = fruitInventory['Bananas'];
  print('Quantity of Bananas: $bananaQuantity');

  // 4. Check for the key "Grapes" and print the result
  bool hasGrapes = fruitInventory.containsKey('Grapes');
  print('Are Grapes in inventory? $hasGrapes');

  // 5. Check for the value 5 and print the result
  bool hasQuantityFive = fruitInventory.containsValue(5);
  print('Is there any fruit with quantity 5? $hasQuantityFive');
}
```