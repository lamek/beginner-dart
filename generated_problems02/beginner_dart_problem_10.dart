Okay, here is a beginner Dart problem and its solution focusing on operators and conditional logic for a discount calculator scenario.

---

**Problem Description: Simple Discount Calculator**

**Goal:** Write a Dart program that calculates the final price of a product after applying a potential discount.

**Requirements:**

1.  **Ask for Price:** Prompt the user to enter the original price of a product. Assume the user enters a valid number.
2.  **Ask for Discount Code:** Ask the user if they have a discount code. They should respond with "yes" or "no".
3.  **Apply Discount:**
    *   If the user answers "yes" (case-insensitive), apply a 10% discount to the original price.
    *   If the user answers "no" (or anything else), the price remains unchanged.
4.  **Calculate Final Price:** Determine the final price based on whether the discount was applied.
5.  **Print Result:** Print the calculated final price to the console, formatted nicely (e.g., showing two decimal places).

**Concepts to Practice:**

*   Reading user input (`stdin.readLineSync()`).
*   Type conversion (`double.parse()`, string comparison).
*   Arithmetic operators (`*`, `-`).
*   Comparison operators (`==`).
*   Conditional logic (`if`/`else`).
*   Basic variable declaration and assignment.

---

**Dart Solution:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Ask for Price
  stdout.write('Enter the product price: ');
  String? priceInput = stdin.readLineSync();
  double originalPrice;

  // Basic input validation and conversion
  try {
    // Use ! to assert non-null, assuming user provides input
    // Use double.parse to convert the String input to a double
    originalPrice = double.parse(priceInput!); 
  } catch (e) {
    print('Invalid price entered. Please run again and enter a number.');
    return; // Exit the program if the price is not a valid number
  }

  // 2. Ask for Discount Code
  stdout.write('Do you have a discount code? (yes/no): ');
  String? discountCodeInput = stdin.readLineSync();

  // 3. Determine if discount applies (using comparison operator ==)
  // Use trim() to remove leading/trailing whitespace and toLowerCase() for case-insensitivity
  // Default to false if input is null or not 'yes'
  bool hasDiscountCode = discountCodeInput?.trim().toLowerCase() == 'yes'; 

  // 4. Calculate Final Price
  double finalPrice = originalPrice; // Initialize final price with the original
  double discountRate = 0.10;       // 10% discount

  // Use conditional logic (if statement) based on the boolean flag
  if (hasDiscountCode) {
    // Calculate discount amount using arithmetic operator *
    double discountAmount = originalPrice * discountRate; 
    
    // Calculate final price using arithmetic operator -
    finalPrice = originalPrice - discountAmount; 
    print('Applying 10% discount...');
  } else {
    print('No discount code applied.');
  }

  // 5. Print Result
  // Use toStringAsFixed(2) to format the price to two decimal places
  print('The final price is: \$${finalPrice.toStringAsFixed(2)}'); 
}
```

**Explanation:**

1.  **Import:** `dart:io` is needed for console interaction (`stdout` for printing without a newline, `stdin` for reading input).
2.  **Get Price:** It prompts the user, reads the input string, and uses `double.parse()` to convert it to a number. A `try-catch` block handles potential errors if the user enters non-numeric text. The `!` after `priceInput` tells Dart we expect it won't be null (a simpler approach for beginners than full null safety handling here, though `double.tryParse` is safer in real applications).
3.  **Get Discount Code:** Prompts the user and reads their "yes" or "no" response.
4.  **Check Discount:** It checks if the input, after trimming whitespace and converting to lowercase, is exactly equal (`==`) to "yes". The result is stored in the `hasDiscountCode` boolean variable. The `?.` (null-aware operator) prevents an error if `discountCodeInput` happens to be `null`.
5.  **Calculate:** It starts `finalPrice` at the `originalPrice`. The `if (hasDiscountCode)` statement checks the boolean variable. If `true`, it calculates the `discountAmount` using multiplication (`*`) and then subtracts (`-`) it from the `originalPrice` to get the new `finalPrice`.
6.  **Print:** It displays the `finalPrice`, using string interpolation (`$variableName`) and `toStringAsFixed(2)` to ensure it looks like currency with two decimal places.