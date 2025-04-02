Okay, here is a beginner Dart problem focused on operators, user input, and conditional logic, along with its solution.

---

**Problem Description: Simple Discount Calculator**

**Goal:** Write a Dart program that calculates the final price of a product after applying a potential discount based on user input.

**Requirements:**

1.  **Get Input:**
    *   Prompt the user to enter the original price of a product (this should be treated as a number, potentially with decimals).
    *   Ask the user if they have a discount code (expect a 'yes' or 'no' answer).
2.  **Process Input:**
    *   Convert the entered price string into a numeric type (like `double`). Handle potential invalid input gracefully (though for a basic problem, you might assume valid numeric input initially, or use `tryParse`).
    *   Convert the 'yes'/'no' answer into a boolean value (`true` if they have a code, `false` otherwise). Make the check case-insensitive.
3.  **Apply Discount Logic:**
    *   Use an `if` statement to check the boolean value representing the discount code.
    *   If the user *has* a discount code (`true`), apply a 10% discount to the original price. (Hint: Multiply the price by 0.90 or subtract 10% of the price from the original price).
    *   If the user *does not* have a discount code (`false`), the final price is the same as the original price.
4.  **Output:**
    *   Print the calculated final price to the console. Format the output clearly (e.g., "The final price is: $X.XX"). It's good practice to format currency to two decimal places.

**Concepts Involved:**
*   Reading user input (`stdin.readLineSync`)
*   Type conversion (String to double, String to bool)
*   Arithmetic operators (`*` or `-`)
*   Comparison operators (`==` for string comparison)
*   Logical evaluation (using a boolean in an `if` statement)
*   Conditional statements (`if`)
*   Printing output (`print`)

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Get Input: Product Price
  stdout.write('Enter the product price: '); // Prompt user without a newline
  String? priceInput = stdin.readLineSync(); // Read user input as a string (nullable)

  // 2. Process Input: Convert price string to double
  double originalPrice;
  try {
    // Use double.parse() which throws an error if the format is invalid
    // Add error handling for robust code
    originalPrice = double.parse(priceInput ?? '0'); // Use '0' if input is null
    if (originalPrice < 0) {
      print('Price cannot be negative. Exiting.');
      return; // Exit the program
    }
  } catch (e) {
    // Handle cases where input is not a valid number
    print('Invalid price format entered. Please enter a number. Exiting.');
    return; // Exit the program
  }

  // 1. Get Input: Discount Code Presence
  stdout.write('Do you have a discount code? (yes/no): ');
  String? discountInput = stdin.readLineSync();

  // 2. Process Input: Convert 'yes'/'no' to boolean (case-insensitive)
  // The ?.toLowerCase() handles null input safely (evaluates to false)
  // The == 'yes' performs a comparison.
  bool hasDiscountCode = discountInput?.trim().toLowerCase() == 'yes';

  // 3. Apply Discount Logic
  double finalPrice = originalPrice; // Initialize final price with original price

  // Use an 'if' statement to check the boolean condition
  if (hasDiscountCode) {
    // Apply 10% discount using an arithmetic operator (*)
    double discountAmount = originalPrice * 0.10; // Calculate 10%
    finalPrice = originalPrice - discountAmount; // Subtract discount
    // Alternatively: finalPrice = originalPrice * 0.90;
    print('Discount applied!');
  } else {
    print('No discount code applied.');
  }

  // 4. Output
  // Use toStringAsFixed(2) to format the price to two decimal places
  print('-------------------------');
  print('Original Price: \$${originalPrice.toStringAsFixed(2)}');
  print('Final Price: \$${finalPrice.toStringAsFixed(2)}');
  print('-------------------------');
}
```

---