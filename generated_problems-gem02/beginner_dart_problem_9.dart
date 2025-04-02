Okay, here is a beginner Dart problem focusing on logical operators, along with its solution.

---

**Problem Description: Logical Operator Playground**

**Goal:** Write a Dart program to understand how logical operators work.

**Task:**

1.  Declare two boolean variables, let's call them `isSunny` and `isWarm`. Assign `true` to `isSunny` and `false` to `isWarm`.
2.  Use the logical **AND** operator (`&&`) to determine if it's both sunny AND warm. Store the result in a variable called `isGoodWeather`.
3.  Use the logical **OR** operator (`||`) to determine if it's either sunny OR warm (or both). Store the result in a variable called `isBearableWeather`.
4.  Use the logical **NOT** operator (`!`) to determine if it is *not* sunny. Store the result in a variable called `isNotSunny`.
5.  Print the initial values of `isSunny` and `isWarm`.
6.  Print the results of the AND, OR, and NOT operations with clear descriptive labels (e.g., "Is it sunny AND warm? ...").

---

**Dart Solution Code:**

```dart
void main() {
  // 1. Declare and initialize boolean variables
  bool isSunny = true;
  bool isWarm = false;

  // 5. Print the initial values
  print("--- Initial Conditions ---");
  print("Is it sunny? $isSunny"); // Output: Is it sunny? true
  print("Is it warm? $isWarm");   // Output: Is it warm? false
  print(""); // Add a blank line for readability

  // 2. Use the AND (&&) operator
  // Checks if BOTH conditions are true
  bool isGoodWeather = isSunny && isWarm;

  // 3. Use the OR (||) operator
  // Checks if AT LEAST ONE condition is true
  bool isBearableWeather = isSunny || isWarm;

  // 4. Use the NOT (!) operator
  // Inverts the boolean value
  bool isNotSunny = !isSunny;
  bool isNotWarm = !isWarm; // Also demonstrate NOT on the second variable

  // 6. Print the results of the logical operations
  print("--- Logical Operations ---");
  print("Is it sunny AND warm? (isSunny && isWarm): $isGoodWeather"); // Output: Is it sunny AND warm? (isSunny && isWarm): false
  print("Is it sunny OR warm? (isSunny || isWarm): $isBearableWeather"); // Output: Is it sunny OR warm? (isSunny || isWarm): true
  print("Is it NOT sunny? (!isSunny): $isNotSunny"); // Output: Is it NOT sunny? (!isSunny): false
  print("Is it NOT warm? (!isWarm): $isNotWarm");   // Output: Is it NOT warm? (!isWarm): true
}
```

---