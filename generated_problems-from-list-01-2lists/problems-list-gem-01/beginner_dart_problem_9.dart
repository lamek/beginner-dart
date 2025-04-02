Okay, here is a beginner Dart problem focusing on operators, along with its solution.

---

**Problem Description: Discount Applicator**

Write a Dart program that determines the final price of a purchase based on the total amount and whether the customer has a membership card.

**Requirements:**

1.  Define a variable `purchaseTotal` of type `double` to store the initial cost of items.
2.  Define a variable `hasMembershipCard` of type `bool` to indicate if the customer has a membership card (`true`) or not (`false`).
3.  Calculate the `finalPrice`. A 10% discount should be applied *only if* the `purchaseTotal` is greater than $50.0 **AND** the `hasMembershipCard` is `true`.
4.  Otherwise, the `finalPrice` remains the same as the `purchaseTotal`.
5.  Print the `purchaseTotal`, whether the user `hasMembershipCard`, and the calculated `finalPrice`.

**Example Scenarios:**

*   If `purchaseTotal = 60.0` and `hasMembershipCard = true`, the final price should be $54.0 (10% discount applied).
*   If `purchaseTotal = 45.0` and `hasMembershipCard = true`, the final price should be $45.0 (total not over $50).
*   If `purchaseTotal = 70.0` and `hasMembershipCard = false`, the final price should be $70.0 (no membership card).

**Hint:** You will need to use:
*   Arithmetic operators (like `*` or `-`) to calculate the discount.
*   A comparison operator (`>`) to check the total.
*   A logical operator (`&&`) to combine the conditions.

---

**Dart Solution**

```dart
void main() {
  // --- Input Variables (You can change these to test different scenarios) ---
  double purchaseTotal = 60.0; // Example: Total purchase amount
  bool hasMembershipCard = true; // Example: Customer has a membership card

  // --- Logic ---
  double finalPrice = purchaseTotal; // Initialize final price to the original total
  double discountRate = 0.10; // 10% discount

  // Check if BOTH conditions are met for the discount
  // Condition 1: purchaseTotal > 50.0 (Comparison Operator)
  // Condition 2: hasMembershipCard is true (Boolean value itself)
  // Combined using the Logical AND (&&) operator
  if (purchaseTotal > 50.0 && hasMembershipCard) {
    // Calculate the discount amount (Arithmetic Operator *)
    double discountAmount = purchaseTotal * discountRate;

    // Apply the discount (Arithmetic Operator -)
    finalPrice = purchaseTotal - discountAmount;

    print("Discount Applied: 10%");
  } else {
    print("No discount applied.");
  }

  // --- Output ---
  print("-------------------------");
  print("Purchase Total: \$${purchaseTotal.toStringAsFixed(2)}"); // Format to 2 decimal places
  print("Has Membership Card: ${hasMembershipCard}");
  print("Final Price: \$${finalPrice.toStringAsFixed(2)}"); // Format to 2 decimal places
  print("-------------------------");
}
```