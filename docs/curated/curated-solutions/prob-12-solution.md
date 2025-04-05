## Solution: Problem 12 - Working with Lists

```dart
void main() {
  // 1. Create an empty list of strings called favoriteFruits
  List<String> favoriteFruits = [];

  // 2. Add at least three fruits to the list
  favoriteFruits.add("Strawberry");
  favoriteFruits.add("Blueberry");
  favoriteFruits.add("Raspberry");
  favoriteFruits.add("Mango");

  // 3. Access and print the second fruit (index 1)
  String secondFruit = favoriteFruits[1];
  print("My second favorite fruit is: $secondFruit");

  // 4. Print the number of fruits in the list
  int numberOfFruits = favoriteFruits.length;
  print("I have $numberOfFruits favorite fruits.");

  // 5. Use a for-in loop to print each fruit with "I like "
  for (String fruit in favoriteFruits) {
    print("I like $fruit");
  }
}
```