Okay, here is a beginner Dart problem focusing on operators for discount eligibility, followed by its solution.

---

**Problem Description: Discount Eligibility Check**

Write a Dart program to determine if a person qualifies for a discount based on their age and student status.

**Requirements:**

1.  Declare an integer variable `age`. Initialize it with a sample value (e.g., 25).
2.  Declare a boolean variable `isStudent`. Initialize it with a sample value (e.g., `false`).
3.  Determine discount eligibility using the following rule: A person is eligible if their `age` is less than 18 **OR** if `isStudent` is `true`.
4.  Use Dart's comparison (`<`) and logical (`||`) operators to check this condition.
5.  Store the boolean result (true if eligible, false otherwise) in a variable named `isEligibleForDiscount`.
6.  Print the final value of the `isEligibleForDiscount` variable to the console, perhaps with a descriptive message.

**Example Scenarios:**

*   If `age` is 17 and `isStudent` is `false`, the result should be `true`.
*   If `age` is 20 and `isStudent` is `true`, the result should be `true`.
*   If `age` is 20 and `isStudent` is `false`, the result should be `false`.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Declare and initialize variables
  int age = 25;         // Sample age - try changing this!
  bool isStudent = false; // Sample student status - try changing this!

  // You can uncomment and test other scenarios:
  // int age = 17;
  // bool isStudent = false; // Expected result: true

  // int age = 20;
  // bool isStudent = true; // Expected result: true

  print("--- Input Values ---");
  print("Age: $age");
  print("Is Student: $isStudent");
  print("--------------------");

  // 2. Determine discount eligibility using comparison (<) and logical OR (||)
  // The condition is true if age is less than 18 OR isStudent is true.
  bool isEligibleForDiscount = (age < 18) || isStudent;

  // 3. Print the boolean result
  print("Eligible for Discount: $isEligibleForDiscount");
}
```

**Explanation:**

1.  We declare `age` as an `int` and `isStudent` as a `bool` and give them initial values.
2.  The core logic is `(age < 18) || isStudent`.
    *   `age < 18` is a comparison operation that evaluates to `true` if the age is less than 18, and `false` otherwise.
    *   `isStudent` directly represents the boolean student status.
    *   The logical OR operator `||` returns `true` if *at least one* of its operands (`age < 18` or `isStudent`) is `true`. It only returns `false` if *both* operands are `false`.
3.  The result of this logical expression is stored in the `isEligibleForDiscount` boolean variable.
4.  Finally, `print()` is used to display the input values and the calculated eligibility status to the console.