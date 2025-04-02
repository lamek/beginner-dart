Okay, here is a beginner Dart problem based on your description, followed by its solution.

---

**Problem Description**

**Title:** Positive, Negative, or Zero Checker

**Objective:** Write a Dart program that checks whether a given integer is positive, negative, or zero.

**Requirements:**

1.  Declare an integer variable (e.g., `myNumber`) and assign it an initial value.
2.  Use an `if-else if-else` statement to evaluate the value of the variable.
3.  Based on the evaluation, print one of the following messages to the console:
    *   "The number is positive." if the number is greater than 0.
    *   "The number is negative." if the number is less than 0.
    *   "The number is zero." if the number is equal to 0.

**Example:**

If you set `myNumber = 10;`, the output should be:
`The number is positive.`

If you set `myNumber = -5;`, the output should be:
`The number is negative.`

If you set `myNumber = 0;`, the output should be:
`The number is zero.`

---

**Solution Code**

```dart
void main() {
  // 1. Declare an integer variable and assign it a value.
  //    Try changing this value to test different cases (e.g., 10, -5, 0).
  int myNumber = -5;

  print("Checking the number: $myNumber");

  // 2. Use if-else if-else statements to check the number.
  if (myNumber > 0) {
    // 3. Print if the number is positive.
    print("The number is positive.");
  } else if (myNumber < 0) {
    // 3. Print if the number is negative.
    print("The number is negative.");
  } else {
    // 3. Print if the number is zero (the only remaining possibility).
    print("The number is zero.");
  }
}
```

---