Okay, here is a beginner Dart problem focusing on operators, specifically for a discount calculator scenario.

---

## Problem Description

**Title:** Simple Discount Calculator

**Goal:** Write a Dart program that calculates the final price of an item after applying a discount.

**Details:**
1.  You are given an `originalPrice` (e.g., 50.0) and a `discountPercentage` (e.g., 15.0, meaning 15%).
2.  You need to calculate the amount of the discount.
3.  Subtract the discount amount from the original price to find the `finalPrice`.
4.  **Bonus:** Add a simple check using comparison operators to ensure the `originalPrice` is greater than 0 and the `discountPercentage` is between 0 and 100 (inclusive). Use logical operators for combining these checks.
5.  Print the `originalPrice`, `discountPercentage`, and the calculated `finalPrice` to the console in a user-friendly format. If the input values are invalid (based on the bonus check), print an error message instead.

**Operators to focus on:**
*   Arithmetic: `*` (multiplication), `/` (division), `-` (subtraction)
*   Comparison: `>` (greater than), `>=` (greater than or equal to), `<=` (less than or equal to)
*   Logical: `&&` (logical AND)

---

## Solution Code

```dart
void main() {
  // --- Input Variables ---
  double originalPrice = 50.0;
  double discountPercentage = 15.0; // Represents 15%

  // --- Display Input ---
  print("Original Price: \$${originalPrice.toStringAsFixed(2)}");
  print("Discount Percentage: ${discountPercentage}%");
  print("---"); // Separator

  // --- Validation (Bonus using Comparison and Logical Operators) ---
  bool isValid = originalPrice > 0 && discountPercentage >= 0 && discountPercentage <= 100;

  if (isValid) {
    // --- Calculation (Arithmetic Operators) ---

    // 1. Calculate the discount amount
    // discountAmount = originalPrice * (percentage / 100)
    double discountAmount = originalPrice * (discountPercentage / 100.0);

    // 2. Calculate the final price
    // finalPrice = originalPrice - discountAmount
    double finalPrice = originalPrice - discountAmount;

    // --- Display Output ---
    print("Calculating discount...");
    print("Discount Amount: \$${discountAmount.toStringAsFixed(2)}");
    print("Final Price after Discount: \$${finalPrice.toStringAsFixed(2)}");

  } else {
    // --- Handle Invalid Input ---
    print("Error: Invalid input values.");
    if (originalPrice <= 0) {
      print("- Original price must be positive.");
    }
    if (discountPercentage < 0 || discountPercentage > 100) {
      print("- Discount percentage must be between 0 and 100.");
    }
  }
}
```

**Explanation:**

1.  **`main()` function:** The entry point of the Dart program.
2.  **Variables:** `originalPrice` and `discountPercentage` are declared as `double` to handle decimal values.
3.  **Input Display:** `print()` is used to show the initial values. `toStringAsFixed(2)` formats the price to two decimal places.
4.  **Validation:**
    *   `originalPrice > 0`: Checks if the price is positive.
    *   `discountPercentage >= 0 && discountPercentage <= 100`: Checks if the percentage is within the valid range (0% to 100%).
    *   `&&` (Logical AND): Combines these checks. Both must be true for `isValid` to be `true`.
5.  **`if (isValid)` block:** This code runs only if the input values pass the validation.
    *   **Discount Calculation:** `originalPrice * (discountPercentage / 100.0)` calculates the actual monetary value of the discount. We use `100.0` to ensure floating-point division.
    *   **Final Price Calculation:** `originalPrice - discountAmount` subtracts the discount from the original price.
    *   **Output Display:** The calculated `discountAmount` and `finalPrice` are printed, formatted to two decimal places.
6.  **`else` block:** This code runs if `isValid` is `false`. It prints an error message indicating why the input was considered invalid.