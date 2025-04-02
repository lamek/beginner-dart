Okay, here is a beginner Dart problem focused on number comparison using operators, along with its solution.

---

**Problem Description: Number Comparator**

Write a Dart program that does the following:

1.  Declares two integer variables, `num1` and `num2`, and assigns them initial values (e.g., `num1 = 10`, `num2 = 5`).
2.  Uses Dart's comparison operators (`>`, `<`, `==`) to compare `num1` and `num2`.
3.  Prints one of the following messages to the console based on the comparison:
    *   "[num1] is greater than [num2]" if `num1` is larger than `num2`.
    *   "[num1] is less than [num2]" if `num1` is smaller than `num2`.
    *   "[num1] is equal to [num2]" if `num1` and `num2` are equal.

Replace `[num1]` and `[num2]` with the actual values of the variables in the output message.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Declare and initialize two integer variables
  int num1 = 10;
  int num2 = 5;

  print("Comparing the numbers: $num1 and $num2");

  // 2. Use comparison operators within an if-else if-else structure
  if (num1 > num2) {
    // 3. Print the result if num1 is greater than num2
    print('$num1 is greater than $num2');
  } else if (num1 < num2) {
    // 3. Print the result if num1 is less than num2
    print('$num1 is less than $num2');
  } else {
    // 3. Print the result if num1 is equal to num2 (the only remaining case)
    print('$num1 is equal to $num2');
  }

  // --- You can try changing the values below to test other cases ---
  print("\n--- Testing another pair ---");
  num1 = 7;
  num2 = 7;
  print("Comparing the numbers: $num1 and $num2");

  if (num1 > num2) {
    print('$num1 is greater than $num2');
  } else if (num1 < num2) {
    print('$num1 is less than $num2');
  } else {
    print('$num1 is equal to $num2');
  }

  print("\n--- Testing a third pair ---");
  num1 = 3;
  num2 = 8;
  print("Comparing the numbers: $num1 and $num2");

  if (num1 > num2) {
    print('$num1 is greater than $num2');
  } else if (num1 < num2) {
    print('$num1 is less than $num2');
  } else {
    print('$num1 is equal to $num2');
  }
}
```

---