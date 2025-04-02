Okay, here is a beginner Dart problem focused on operators, along with its solution.

---

**Problem Description: Discount Applicator**

**Goal:** Write a Dart program that calculates the final price of a purchase after potentially applying a discount.

**Details:**

1.  You will be given two pieces of information:
    *   `purchaseTotal`: A `double` representing the initial cost of items.
    *   `hasMembershipCard`: A `bool` indicating if the customer has a membership card (`true`) or not (`false`).
2.  A discount of 10% should be applied *only if* the `purchaseTotal` is strictly greater than $50 *AND* the `hasMembershipCard` is `true`.
3.  Calculate the `finalPrice`. If a discount is applied, the `finalPrice` is the `purchaseTotal` minus the 10% discount amount. Otherwise, the `finalPrice` is the same as the `purchaseTotal`.
4.  Print the calculated `finalPrice` to the console.

**Example Scenarios:**

*   If `purchaseTotal` is `60.0` and `hasMembershipCard` is `true`, the final price should be `54.0` (60.0 - 10% of 60.0).
*   If `purchaseTotal` is `45.0` and `hasMembershipCard` is `true`, the final price should be `45.0` (no discount because total is not over $50).
*   If `purchaseTotal` is `70.0` and `hasMembershipCard` is `false`, the final price should be `70.0` (no discount because no membership card).

**Operators to Use:**

*   Arithmetic: `-` (subtraction), `*` (multiplication)
*   Comparison: `>` (greater than)
*   Logical: `&&` (AND)

---

**Solution Code:**

```dart
void main() {
  // --- Input Variables (Feel free to change these values to test) ---
  double purchaseTotal = 65.50;
  bool hasMembershipCard = true;

  // --- Constants ---
  const double discountThreshold = 50.0;
  const double discountRate = 0.10; // 10%

  // --- Logic ---
  double finalPrice = purchaseTotal; // Initialize final price with the original total

  // Check if BOTH conditions for the discount are met
  // 1. Is the purchase total greater than the threshold? (Comparison: >)
  // 2. Does the user have a membership card? (Boolean check)
  // 3. Combine checks using logical AND (&&)
  if (purchaseTotal > discountThreshold && hasMembershipCard) {
    // Calculate the discount amount (Arithmetic: *)
    double discountAmount = purchaseTotal * discountRate;

    // Apply the discount (Arithmetic: -)
    finalPrice = purchaseTotal - discountAmount;

    print("Discount applied!"); // Optional: Indicate that a discount was given
  } else {
    print("No discount applied."); // Optional: Indicate why no discount was given
  }

  // --- Output ---
  print("Purchase Total: \$${purchaseTotal}");
  print("Has Membership Card: ${hasMembershipCard}");
  print("Final Price: \$${finalPrice.toStringAsFixed(2)}"); // Format to 2 decimal places
}
```

---