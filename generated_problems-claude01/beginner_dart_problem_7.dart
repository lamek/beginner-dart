Okay, here is a beginner Dart problem focusing on operators, themed around a discount calculator.

---

**Problem Description**

**Title:** Simple Discount Calculator

**Objective:** Write a Dart program that calculates the final price of an item after applying a discount. The program should take the item's original price and the discount percentage as input from the user.

**Requirements:**

1.  **Input:** Prompt the user to enter:
    *   The original price of the item (as a number, potentially with decimals).
    *   The discount percentage (as a number, e.g., 15 for 15%).
2.  **Validation:**
    *   Check if the original price is positive (`> 0`).
    *   Check if the discount percentage is valid (between 0 and 100, inclusive - `0 <= discount <= 100`).
    *   If either input is invalid, print an error message and stop the calculation.
3.  **Calculation:**
    *   Calculate the amount of the discount using the formula: `discountAmount = originalPrice * (discountPercentage / 100)`
    *   Calculate the final price using the formula: `finalPrice = originalPrice - discountAmount`
4.  **Output:**
    *   If the inputs are valid, display the calculated final price, formatted nicely (e.g., to two decimal places).

**Example Interaction:**

```
Enter the item's original price: 50.00
Enter the discount percentage (e.g., 10 for 10%): 15
Calculating discount...
Original Price: $50.00
Discount Percentage: 15.0%
Discount Amount: $7.50
Final Price: $42.50
```

**Example Interaction (Invalid Input):**

```
Enter the item's original price: -10
Enter the discount percentage (e.g., 10 for 10%): 10
Error: Original price must be positive.
```

**Example Interaction (Invalid Input):**

```
Enter the item's original price: 100
Enter the discount percentage (e.g., 10 for 10%): 110
Error: Discount percentage must be between 0 and 100.
```

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Input
  print("--- Simple Discount Calculator ---");

  double? originalPrice; // Use nullable double for initial input
  double? discountPercentage;

  // Get Original Price
  stdout.write("Enter the item's original price: ");
  String? priceInput = stdin.readLineSync();
  try {
    // Try parsing the input string to a double
    originalPrice = double.parse(priceInput ?? ''); 
  } catch (e) {
    print("Error: Invalid input for price. Please enter a number.");
    return; // Exit if parsing fails
  }

  // Get Discount Percentage
  stdout.write("Enter the discount percentage (e.g., 15 for 15%): ");
  String? discountInput = stdin.readLineSync();
  try {
    discountPercentage = double.parse(discountInput ?? '');
  } catch (e) {
    print("Error: Invalid input for discount percentage. Please enter a number.");
    return; // Exit if parsing fails
  }

  // 2. Validation (Using Comparison and Logical Operators)
  // Check if price is positive
  if (originalPrice <= 0) { // Comparison operator <=
    print("Error: Original price must be positive.");
    return; // Stop execution
  }

  // Check if discount percentage is within the valid range (0 to 100)
  if (discountPercentage < 0 || discountPercentage > 100) { // Comparison operators <, > and Logical operator || (OR)
    print("Error: Discount percentage must be between 0 and 100.");
    return; // Stop execution
  }

  print("Calculating discount...");

  // 3. Calculation (Using Arithmetic Operators)
  // Calculate discount amount
  double discountAmount = originalPrice * (discountPercentage / 100); // Arithmetic operators * and /

  // Calculate final price
  double finalPrice = originalPrice - discountAmount; // Arithmetic operator -

  // 4. Output
  print("\n--- Calculation Summary ---");
  print("Original Price: \$${originalPrice.toStringAsFixed(2)}"); // Format to 2 decimal places
  print("Discount Percentage: ${discountPercentage}%");
  print("Discount Amount: \$${discountAmount.toStringAsFixed(2)}");
  print("Final Price: \$${finalPrice.toStringAsFixed(2)}"); 
}
```