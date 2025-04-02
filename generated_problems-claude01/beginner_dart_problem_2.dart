Okay, here is a beginner Dart problem focused on variables, basic data types (especially `List`), and simple calculations, along with its solution.

---

**Problem Description: Simple Shopping Cart**

**Goal:** Simulate calculating the total cost of items in a grocery shopping cart and printing a simple receipt.

**Tasks:**

1.  **Create Data Structures:**
    *   Create a `List` of `String` called `groceryItems` to store the names of at least 3 grocery items (e.g., "Milk", "Bread", "Eggs").
    *   Create another `List` of `double` called `itemPrices` to store the corresponding prices for each item in `groceryItems`. Ensure the order matches (the first price corresponds to the first item, etc.).
2.  **Calculate Total Cost:**
    *   Declare a `double` variable called `totalCost` and initialize it to `0.0`.
    *   Write code to iterate through the `itemPrices` list and add each price to the `totalCost`.
3.  **Print Receipt:**
    *   Print a header for the receipt (e.g., "--- Receipt ---").
    *   Iterate through the `groceryItems` and `itemPrices` lists simultaneously. For each item, print its name and its price on a new line (e.g., "Milk: $3.50"). *Hint: You can use the index to access corresponding elements in both lists.*
    *   Print a separator line (e.g., "---").
    *   Print the final `totalCost`, formatted nicely (e.g., "Total: $8.75").

**Bonus (Optional):**
*   Create a `bool` variable `hasCoupon` and set it to `true` or `false`.
*   If `hasCoupon` is `true`, apply a $1.00 discount to the `totalCost` *before* printing the final total, and print a line indicating the coupon was applied.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Create Data Structures
  List<String> groceryItems = ['Milk', 'Bread', 'Eggs', 'Apples'];
  List<double> itemPrices = [3.50, 2.25, 4.99, 1.50];

  // Bonus: Coupon variable
  bool hasCoupon = true;
  double couponDiscount = 1.00;

  // 2. Calculate Total Cost
  double totalCost = 0.0;

  // Iterate through prices and sum them up
  // We assume both lists have the same length and items correspond by index.
  for (int i = 0; i < itemPrices.length; i++) {
    totalCost = totalCost + itemPrices[i]; // Or use shorthand: totalCost += itemPrices[i];
  }

  // 3. Print Receipt
  print('--- Receipt ---');
  print('Items Purchased:');

  // Iterate through both lists using the index
  for (int i = 0; i < groceryItems.length; i++) {
    // Get the item name and price
    String item = groceryItems[i];
    double price = itemPrices[i];
    // Print formatted item line - toStringAsFixed(2) ensures two decimal places
    print('${item}: \$${price.toStringAsFixed(2)}');
  }

  print('---------------');

  // Print Subtotal before potential coupon
  print('Subtotal: \$${totalCost.toStringAsFixed(2)}');

  // Bonus: Apply coupon discount if applicable
  if (hasCoupon) {
    print('Coupon Applied: -\$${couponDiscount.toStringAsFixed(2)}');
    totalCost = totalCost - couponDiscount; // Apply the discount
    // Ensure total cost doesn't go below zero if discount is large
    if (totalCost < 0) {
      totalCost = 0;
    }
  }

  print('---------------');
  // Print the final total cost
  print('Total: \$${totalCost.toStringAsFixed(2)}');
  print('---------------');
  print('Thank you!');
}
```

**Explanation:**

1.  **Lists:** `groceryItems` (List<String>) holds the names, and `itemPrices` (List<double>) holds the costs. They are parallel lists, meaning the item at index `i` in `groceryItems` corresponds to the price at index `i` in `itemPrices`.
2.  **Total Calculation:** A `for` loop iterates from index 0 up to (but not including) the length of the `itemPrices` list. In each iteration, the price at the current index `i` (`itemPrices[i]`) is added to `totalCost`.
3.  **Receipt Printing:** Another `for` loop iterates through the items. Inside the loop, it accesses both `groceryItems[i]` and `itemPrices[i]` to print each item and its price. `price.toStringAsFixed(2)` is used to format the double value to always show two decimal places, suitable for currency.
4.  **Bonus Coupon:** An `if` statement checks the `hasCoupon` boolean variable. If `true`, a message is printed, the `couponDiscount` is subtracted from `totalCost`, and a check prevents the total from becoming negative.
5.  **Final Output:** The calculated (and potentially discounted) `totalCost` is printed, again formatted to two decimal places.