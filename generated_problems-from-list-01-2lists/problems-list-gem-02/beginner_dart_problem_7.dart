Okay, here is a beginner Dart problem and its solution based on your description.

---

## Problem Description

**Topic:** Dart Operators (Comparison)

**Task:** Age Eligibility Check

Write a Dart program that determines if a person is eligible for a certain activity based on their age. To be eligible, the person must be 18 years old or older.

**Requirements:**

1.  Declare an integer variable named `age` and assign it a sample age (e.g., 25, 15).
2.  Use a comparison operator (`>=`) to check if the value stored in the `age` variable is greater than or equal to 18.
3.  Store the result of this comparison (which will be a boolean value: `true` or `false`) in a boolean variable named `isEligible`.
4.  Print the value of the `isEligible` variable to the console.

**Example Output (for age = 25):**

```
true
```

**Example Output (for age = 15):**

```
false
```

---

## Dart Solution

```dart
void main() {
  // 1. Declare an integer variable for age and assign a value.
  //    Try changing this value to test different scenarios (e.g., 15, 18, 25).
  int age = 25; 

  // 2. Use the greater than or equal to comparison operator (>=)
  //    to check if the age is 18 or older.
  // 3. Store the boolean result (true or false) in the isEligible variable.
  bool isEligible = age >= 18;

  // 4. Print the boolean result to the console.
  print("Is the person eligible (18+)?"); 
  print(isEligible); 

  // --- Optional: Test with another age ---
  print("\n--- Testing with another age ---");
  age = 15; // Change age to a value less than 18
  isEligible = age >= 18; // Recalculate eligibility
  print("Age is now: $age"); // Using string interpolation to show the age
  print("Is the person eligible (18+)?");
  print(isEligible); 
}
```

---